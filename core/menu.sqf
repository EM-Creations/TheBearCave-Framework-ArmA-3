private ["_info"];

player createDiarySubject ["FW_Menu", "TBC Framework"];

_info = "
<img image='core\tbc-logo-200.jpg' />
<br /><br />
<font size='18'>Welcome to The Bear Cave Framework!</font><br/>
The Bear Cave Framework is a simple framework designed for ArmA 3, based on the Olsen Framework. It supports modules and is easy to configure.<br/>
<br/>
Find out more about the framework on GitHub.<br/>
github.com/EM-Creations/TheBearCave-Framework-ArmA-3<br/>
<br/>
Current Version: 4.4.0
";

player createDiaryRecord ["FW_Menu", ["Framework Info", _info]];
