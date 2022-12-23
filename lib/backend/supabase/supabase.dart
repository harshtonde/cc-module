import 'package:supabase_flutter/supabase_flutter.dart';

export 'database/database.dart';

const _kSupabaseUrl = 'https://yevpwduyczxfrxogrvgg.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlldnB3ZHV5Y3p4ZnJ4b2dydmdnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzE2NDg0MTEsImV4cCI6MTk4NzIyNDQxMX0.11qGY_QVBozfhqZAMSGa6nTcx6mSPt_7_Wx7A-Shqyg';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
