{******************************************************************************}
{*  BlowFish.err.inc                                                           *}
{*  Revolutionary Confederation of Anarcho Syndicalists                       *}
{*  Written by: black.rabbit 2011                                             *}
{******************************************************************************}
resourcestring
    ERR_BLOWFISH_INCORRECT_KEY   = '������������ ���� "%s"!';
    ERR_BLOWFISH_INCORRECT_BLOCK = '������������ ���� "%s"!';
    ERR_BLOWFISH_INCORRECT_IV    = '������������ ������ ������������� "%s"!';
{$IFDEF ECB}
    ERR_BLOWFISH_ECB_ENCRYPT     = '������ ������������� BlowFish::%d %s � ������ ����������� ������� �����'#13#10'������ ���������� ������';
    ERR_BLOWFISH_ECB_DECRYPT     = '������ ������������� BlowFish::%d %s � ������ ����������� ������� �����'#13#10'������ ���������� ������';
{$ENDIF ECB}
{$IFDEF CBC}
    ERR_BLOWFISH_CBC_ENCRYPT     = '������ ������������� BlowFish::%d %s � ������ ��������� ������ �� �����������'#13#10'������ ���������� ������';
    ERR_BLOWFISH_CBC_DECRYPT     = '������ ������������� BlowFish::%d %s � ������ ��������� ������ �� �����������'#13#10'������ ���������� ������';
{$ENDIF CBC}
{$IFDEF CFB}
    ERR_BLOWFISH_CFB_ENCRYPT     = '������ ������������� BlowFish::%d %s � ������ �������� ����� �� �����������'#13#10'������ ���������� ������';
    ERR_BLOWFISH_CFB_DECRYPT     = '������ ������������� BlowFish::%d %s � ������ �������� ����� �� �����������'#13#10'������ ���������� ������';
{$ENDIF CFB}
{$IFDEF OFB}
    ERR_BLOWFISH_OFB_ENCRYPT     = '������ ������������� BlowFish::%d %s � ������ �������� �������� �������� ������'#13#10'������ ���������� ������';
    ERR_BLOWFISH_OFB_DECRYPT     = '������ ������������� BlowFish::%d %s � ������ �������� �������� �������� ������'#13#10'������ ���������� ������';
{$ENDIF OFB}