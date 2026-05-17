//! This file contains the AuthServices class which provides methods for user authentication using Supabase.
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthServices {
  
  final SupabaseClient _supabase = Supabase.instance.client;//! This line initializes a Supabase client instance which will be used to interact with the Supabase authentication services.

  Future<AuthResponse> signInWithEmailPassword(String email, String password) async {
    return await _supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  Future<AuthResponse> signUpWithEmailPassword(String email, String password) async {
    return await _supabase.auth.signUp(
      email: email,
      password: password,
      //* in some cases, you might want to send additional user metadata during sign-up, which can be done using the `data` parameter. For example:
      // data: {
      //   "name": name,
      // }
    );
  }

  Future<void> signOut() async {
    return await _supabase.auth.signOut();
  }
  String? getCurrentEmail() {
    final session = Supabase.instance.client.auth.currentSession;
    final user = session?.user;
    return user?.email;
  }
  String? getCurrentUid() {
    final session = Supabase.instance.client.auth.currentSession;
    final user = session?.user;
    return user?.id;
  }
}