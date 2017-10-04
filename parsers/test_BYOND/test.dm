#define exit(code) call("./libextlib.so", "exit_byond")("[code]")
//#define exit(code) world.log << "EXIT: [code]"

/proc/test()
	var/erm = world.params.Copy()
	var/json = file2text(erm[1])
	world.log << "poop: [json]"
	world.log << json_decode(json)


var/ZZZZ/zzzz = new
/ZZZZ/New()
	//world.log << json_encode(world.params)
	try
		test()
	catch (var/exception/e)
		world.log << "FAIL:[e.name]"
		//sleep(1)
		exit(1)
	world.log << "PASS"
	exit(0)
