// trak_generator.js

function main() {

	// Paths
	var ffmpegPath = ".\\ffmpeg.exe";
	var audioFilesPath = ".\\generated\\track\\";
	var scriptFilesPath = ".\\generated\\scripts\\";

	// Default track values
	var trackName = "0";
	var trackNamespace = "default";
	var trackFilePath = "";
	var trackSegments = 0;
	var segmentTime = 1.0;

	echo("Init program...\n");

	// Get user inputs

	// Track id
	trackName = inputLoop(input, "Track name: ", "Error. Please insert a name!");

	// Track namespace
	trackNamespace = inputLoop(input, "Track namespace: ", "Error. Please insert a namespace!");

	// Track file
	trackFilePath = inputLoop(fileInput, "Select the track file.", "Error. Please select a file!");

	// Process audio data
	assurePathExistance(audioFilesPath);
	var success = generateAudioFiles(trackFilePath, ffmpegPath, segmentTime, audioFilesPath);
	if (success !== 0) {
		exitMessage("Error. Not a valid file! The program will exit.");
	}

	// Process text data
	trackSegments = getSegmentCount(audioFilesPath);
	assurePathExistance(scriptFilesPath);
	generateScriptFiles(trackName, trackSegments, trackNamespace, scriptFilesPath);

	// End
	exitMessage("End program successfully! The program will exit.");
}

function generateAudioFiles(file, ffmpeg, segmentTime, dir) {
	var shell = new ActiveXObject("WScript.Shell");
	echo("Processing file...");
	var cmd = "\"" + ffmpeg + "\" -i \"" + file + "\" -codec:a libvorbis -vn -map_metadata -1 -f segment -segment_time " + segmentTime.toString() + " \"" + dir + "%d.ogg\"";
	return shell.run(cmd, 0, true);
}

function getSegmentCount(dir) {
	var fs = new ActiveXObject("Scripting.FileSystemObject");
	return fs.getFolder(dir).files.count;
}

function generateScriptFiles(trackName, segments, namespace, dir) {

	// JSON file
	var jsonFileDir = dir + "sounds.json";
	var jsonFileText = "{";
	for (var i = 0; i < segments; i++) {
		var comma = i != segments - 1 ? "," : "";
		jsonFileText += "\r\n\"track." + trackName + "." + i + "\": {\"sounds\": [{\"name\": \"" + namespace + ":" + trackName + "/" + i + "\", \"stream\": false}]}" + comma;
	}
	jsonFileText += "}";
	saveTextFile(jsonFileDir, jsonFileText);
}

function saveTextFile(path, text) {
	var fs = new ActiveXObject("Scripting.FileSystemObject");
	var stream1 = new ActiveXObject("ADODB.Stream");
	var stream2 = new ActiveXObject("ADODB.Stream");
	var tempFile = path + "_temp";

	stream1.charSet = "utf-8";
	stream1.open();
	stream1.writeText(text);
	stream1.position = 0;
	stream1.saveToFile(tempFile, 2);
	stream1.type = 2;
	stream1.position = 3;
	stream2.type = 1;
	stream2.open();
	stream1.copyTo(stream2);
	stream2.saveToFile(path, 2)
	stream1.close();
	stream2.close();

	// Delete temp file
	if (fs.fileExists(tempFile)) {
		fs.deleteFile(tempFile);
	}
}

function assurePathExistance(path) {
	var fs = new ActiveXObject("Scripting.FileSystemObject");
	if (!fs.fileExists(path)) {
		createPath(path);
	}
}

function createPath(path) {
	var shell = new ActiveXObject("WScript.Shell");
	var cmd = "cmd /c mkdir \"" + path + "\"";
	shell.run(cmd, 0, true);
}

// Console related functions

function wait() {
	WScript.stdIn.readLine();
}

function echo(message) {
	WScript.stdOut.writeLine(message);
}

function input(message) {
	echo(message);
	return WScript.stdIn.readLine();
}

function fileInput(message) {
	var shell = new ActiveXObject("WScript.Shell");
	echo(message);
	var process = shell.exec("mshta.exe \"about:<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge\"><input type=\"file\" accept=\".aac,.flac,.m4a,.mogg,.mp3,.oga,.ogg,.ogm,.ogv,.ogx,.opus,.wav,.wma\" id=\"input\"/><script>input.click();new ActiveXObject(\"Scripting.FileSystemObject\").getStandardStream(1).writeLine(input.value);close();resizeTo(0,0);</script>\"");
	var text = process.stdOut.readLine();
	process.terminate();
	return text;
}

function inputLoop(inputFunc, message, error) {
	var value = inputFunc(message);
	if (!value) {
		echo(error);
		inputLoop(inputFunc, message, error);
	} else {
		return value;
	}
}

function exit() {
	WScript.quit();
}

function exitMessage(message) {
	echo(message);
	wait();
	exit();
}

(function () {
	if (WScript.fullName.slice(-12).toLowerCase() !== "\\cscript.exe") {
		var cmd = "cscript.exe //nologo \"" + WScript.scriptFullName + "\"";
		var args = WScript.arguments;
		for (var i = 0; i < args.length; i++) {
			var arg = args(i);
			cmd += " " + (~arg.indexOf(" ") ? "\"" + arg + "\"" : arg);
		}
		new ActiveXObject("WScript.Shell").run(cmd);
		exit();
	}
})();

main();
