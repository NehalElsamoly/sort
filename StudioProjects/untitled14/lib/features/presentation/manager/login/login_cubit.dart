import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<ShopLoginStates> {
  LoginCubit() : super(LoginInitial());
void onchangelanguage()async{
SharedPreferences s=await SharedPreferences.getInstance();

}
}
