void drawAsset(unsigned char assetId);
void drawLCD1(unsigned char assetId, int frame);
void drawLCD2(unsigned char assetId, int frame);
void drawLCD4(unsigned char assetId, int frame);
void drawLCD8(unsigned char assetId, int frame);
void setBeep(unsigned short freq);

void nextNote_cb(unsigned char assetId, int frame);
void nextMIDI_cb(unsigned char assetId, int frame) ;
