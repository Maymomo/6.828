#include <iostream>
#include <string>

using namespace std;

const string TRAPHANDLER = "TRAPHANDLER";
const string TRAPHANDLER_NOEC = "TRAPHANDLER_NOEC";
const string TRAPHANDLER_NAME = "TRAPHANDLER_";

/*
 * code
 * 8
 * 10
 * 11
 * 12
 * 13
 * 14
 * 17
 */

bool has_error_code(int inum)
{
	switch (inum) {
	case 8:
	case 10:
	case 11:
	case 12:
	case 13:
	case 14:
	case 17:
		return true;
	default:
		break;
	}
	return false;
}

int main(void)
{
	cout << "#include <kern/trapentry.S>" << endl;
	cout << endl;
	cout << ".data" << endl;
	cout << "	.globl trap_handlers" << endl;
	cout << "trap_handlers:" << endl;
	for (int i = 0; i < 255; i++) {
		cout << ".long " << TRAPHANDLER_NAME << i << endl;
	}
	cout << ".text" << endl;
	for (int i = 0; i < 255; i++) {
		string handler;
		if (has_error_code(i)) {
			handler = TRAPHANDLER;
		} else {
			handler = TRAPHANDLER_NOEC;
		}
		cout << handler << "(" << TRAPHANDLER_NAME << i << "," << i
		     << ")" << endl;
	}
	return 0;
};

