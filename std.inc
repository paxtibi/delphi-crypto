{******************************************************************************}
{*  std.inc                                                                   *}
{*  Revolutionary Confederation of Anarcho Syndicalists                       *}
{*  Written by: black.rabbit 2011                                             *}
{******************************************************************************}
{$LONGSTRINGS ON}         // ������� ������
{$ALIGN ON}               // ������������ ����� �������
{$DEFINE ASM}             // ���������� � ������������ ��������
{.$DEFINE HEX_UPPER_CASE} // ������� ������� � 16-������ ������ �����
{.$DEFINE EXTERNAL_LINK}  // ������������ ������-������� �� dll
{$DEFINE ECB}             // ����������� ������ ����������� ������� �����
{$DEFINE CBC}             // ����������� ������ ��������� ������ �� �����������
{$DEFINE CFB}             // ����������� ������ �������� ����� �� �����������
{$DEFINE OFB}             // ����������� ������ �������� �������� �������� ������
{$DEFINE GZIP}            // ������������ gzlib ������ zlib
{.$DEFINE DELETE_TRIGGER} // ������� ������ � ���������� �������� � ������� ���������
//                          ( � ��������� SQLit3 �� ������������ �������� � ��������� )
{$DEFINE CHECK_PASSWORDS} // ��������� ������ �� ����������� ��������� ��� �����������
{$DEFINE SMPL_PASSWORDS} // ��������� ������� ������
{.$DEFINE NORM_PASSWORDS}  // ��������� ������ ������� ���������
{.$DEFINE DIFF_PASSWORDS} // ��������� ���� ������� ������

{.$DEFINE HTTP}            // ������������ ��� ����� http
{$DEFINE SMTP_POP3}       // ������������ ��� ����� smtp/pop3

{ -- ��������� SQLite}
{.$DEFINE SQLITE_SYNCHRONOUS_FULL}  // ������������ ������ �������������
{$DEFINE SQLITE_SYNCHRONOUS_NORMAL} // ������������ ��������� �������������
{.$DEFINE SQLITE_SYNCHRONOUS_OFF}   // �� ������������ ������������� (������ �� �������������)
{$DEFINE SQLITE_AUTO_VACUUM_NONE}         // �������������� ������ �� ���������
{.$DEFINE SQLITE_AUTO_VACUUM_FULL}        // ������ �������������� ������ ��
{.$DEFINE SQLITE_AUTO_VACUUM_INCREMENTAL} // ��������� �������������� ������ ��

