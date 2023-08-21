// This file is script-generated.
// Don't modify it manually!
// See test_gen_scripts/verify_ecdsa_test.py for details
use core::traits::Into;
use core::option::OptionTrait;
use webauthn::ecdsa::{verify_ecdsa, verify_hashed_ecdsa, VerifyEcdsaError};
use starknet::secp256r1::Secp256r1Impl;
use starknet::secp256r1::Secp256r1Point;
use starknet::SyscallResultTrait;
use array::ArrayTrait;

#[test]
#[available_gas(200000000000)]
fn test_verify_ecdsa_short(){
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    63467793551266584637599054039519636856452537636457496669154068663997345354987,
	    110967462666478283568428746330856044367269957709985710636852907103562116825764
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 41085986215916426233738248382232857092157899763826505200171206343929890023947;
	let s = 45688787890143535151750600968429876696322934015981459711404474721685147437261;
	let msg = 49;
	
	match verify_hashed_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => (),
	    Result::Err(m) => assert(false, m.into())
	}
}

#[test]
#[available_gas(200000000000)]
fn test_verify_ecdsa(){
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    107388754421395927683589716868521050997991923364268787437679068991911815819961,
	    24550282032100565016354128618767542162629048582274907214720441026539956163113
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 94200532223181827160491193694967455617572562512529272060632544275439247559419;
	let s = 53754736346529167008234987878920764813624642023730180805027398931700969438012;
	let msg = 22405534230753928650781647905;
	
	match verify_hashed_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => (),
	    Result::Err(m) => assert(false, m.into())
	}
}

#[test]
#[available_gas(200000000000)]
fn test_verify_ecdsa_long(){
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    69813430234075423383418779641535712686668104288994937790928206878834266581963,
	    87400988359017546254557822923643655879330042008749362060041328926899119339861
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 75381747027508258126139980571915071655373990392192212648171083724029346985279;
	let s = 102617651815162080465220974517894935728527485204339995613998784640304293318842;
	let msg = 149135777980097582634002128993283245052269503470703527156581804847063441697;
	
	match verify_hashed_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => (),
	    Result::Err(m) => assert(false, m.into())
	}
}

#[test]
#[available_gas(200000000000)]
fn test_ecdsa_wrong_arguments(){
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    18491227097431375697659065030186450943899515498289730652865287072594795494560,
	    99316718446637702704088256988863298846042015682730398910078519330947645467187
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 0;
	let s = 0;
	let msg = 6214289900658384436962189733492;
	
	match verify_hashed_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => assert(false, 'Should Error!'),
	    Result::Err(m) => match m {
	        VerifyEcdsaError::WrongArgument => (),
	        VerifyEcdsaError::InvalidSignature =>assert(false, 'Wrong Error!'),
	        VerifyEcdsaError::SyscallError => assert(false, 'Wrong Error!'),
	    }
	}
}

#[test]
#[available_gas(200000000000)]
fn test_ecdsa_invalid_signature(){
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    24200627686981083747981120034301760634493467211123724606987142546310307141688,
	    3173943041847982235929219288141496244568261571995269915833551138671353836011
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 28958416390714699085995842403413588592646594587607764113244835745140187012823;
	let s = 68317264297627115894970663025635303675562994933820506383165881102278873126915;
	let msg = 111110000011111;
	
	match verify_hashed_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => assert(false, 'Should Error!'),
	    Result::Err(m) => match m {
	        VerifyEcdsaError::WrongArgument => assert(false, 'Wrong Error!'),
	        VerifyEcdsaError::InvalidSignature => (),
	        VerifyEcdsaError::SyscallError => assert(false, 'Wrong Error!'),
	    }
	}
}

#[test]
#[available_gas(200000000000)]
fn test_verify_ecdsa_with_hash_0(){
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    96788019793253839756756184266740088456539534090540825042305036241992537979579,
	    29444367485394897626488625628539454099258774036786443408017185346187683939717
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 79171436260837354504387178381557178574020107258869934743402793231246452231546;
	let s = 9852098239975597601514221335629469250080232926540616542218271713355923887631;
	let mut msg: Array<u8> = ArrayTrait::new();
	msg.append(0x31);
	
	
	match verify_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => (),
	    Result::Err(m) => assert(false, m.into())
	}
}

#[test]
#[available_gas(200000000000)]
fn test_verify_ecdsa_with_hash_1(){
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    104042438048061076840156677277719999415596552103114971871690085309320633117831,
	    61086564744714420019948774137861582088609757867469774287158352741472547578882
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 56992268474115068502369184928410405428650263111888057428453742705206106119952;
	let s = 530179303896286549889703356686783559974526438167236610456257481181399665641;
	let mut msg: Array<u8> = ArrayTrait::new();
	msg.append(0x48);
	msg.append(0x65);
	msg.append(0x6c);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x20);
	msg.append(0x57);
	msg.append(0x6f);
	msg.append(0x72);
	msg.append(0x6c);
	msg.append(0x64);
	msg.append(0x21);
	
	
	match verify_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => (),
	    Result::Err(m) => assert(false, m.into())
	}
}

#[test]
#[available_gas(200000000000)]
fn test_verify_ecdsa_with_hash_2(){
	let pub_key = Secp256r1Impl::secp256_ec_new_syscall(
	    37819960336003506902845785198198478308462845343752201236791177576439480075816,
	    37900126300882041307341878506794212158827662621978047417002295523667848394083
	)
	    .unwrap_syscall()
	    .unwrap();
	let r = 107834035481403428592710948347726362079277926176853201796643314698168929345115;
	let s = 97187821211153596489130453796190816598890356799630878918390507493698464552806;
	let mut msg: Array<u8> = ArrayTrait::new();
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x4c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x61);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6d);
	msg.append(0x65);
	msg.append(0x73);
	msg.append(0x73);
	msg.append(0x61);
	msg.append(0x67);
	msg.append(0x65);
	msg.append(0x2c);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	msg.append(0x20);
	msg.append(0x71);
	msg.append(0x75);
	msg.append(0x69);
	msg.append(0x74);
	msg.append(0x65);
	msg.append(0x20);
	msg.append(0x6c);
	msg.append(0x6f);
	msg.append(0x6e);
	msg.append(0x67);
	
	
	match verify_ecdsa(pub_key, msg, r, s) {
	    Result::Ok => (),
	    Result::Err(m) => assert(false, m.into())
	}
}

