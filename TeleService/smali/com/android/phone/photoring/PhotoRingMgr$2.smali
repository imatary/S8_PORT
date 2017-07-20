.class Lcom/android/phone/photoring/PhotoRingMgr$2;
.super Ljava/lang/Object;
.source "PhotoRingMgr.java"

# interfaces
.implements Lcom/android/phone/photoring/ICallMessageNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoRingMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingMgr;


# direct methods
.method private static synthetic -getcom-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->-com-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->-com-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->values()[Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ALERTINFO:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->DOWNLOAD_CONTENT:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CALLMESSAGE_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CALLMESSAGE_CHG_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CONTENT_SPEC_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->NONE:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->SET_REALTIME_SERVICEINFO_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->UPLOAD_CONTENT_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->-com-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/phone/photoring/PhotoRingMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/android/phone/photoring/CallMessageConstants$RequestType;Landroid/os/Bundle;)V
    .locals 33

    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr$2;->-getcom-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues()[I

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v30

    aget v29, v29, v30

    packed-switch v29, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    const-string/jumbo v30, "GET_CALLMESSAGE_CALL"

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string/jumbo v29, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "result : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    const-string/jumbo v29, "0000"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    const-string/jumbo v29, "content_url"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v29

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;->PHOTORING_CONTENT_EXIST:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v31

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap1(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v29

    if-nez v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    const-string/jumbo v30, "chg_key"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-set4(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    const-string/jumbo v30, "service_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-set5(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "key_photoring_mt_content_url"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoringUtil;->setContentUrl(Ljava/lang/String;)V

    const/16 v29, 0x2e

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-get1(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "photoring_content"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v10, Lcom/android/phone/photoring/PhotoRingDB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get11(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v30

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingDB;->getCacheData(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    const-string/jumbo v30, "use cached data"

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/phone/photoring/PhotoRingMgr;->-get3(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->copyImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "photoring_content"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;->PHOTORING_CONTENT_DOWNLOADED:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap1(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-set1(Lcom/android/phone/photoring/PhotoRingMgr;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingMgr;->downloadContent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    const-string/jumbo v30, "make file failed"

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v29, "9998"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "DOWNLOAD_CONTENT incoming call content dlonload started : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/phone/photoring/PhotoRingMgr;->-get7(Lcom/android/phone/photoring/PhotoRingMgr;)Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    const/16 v26, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->prdownstarted:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    const-string/jumbo v29, "dl_result"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_4

    const/4 v4, 0x1

    const-string/jumbo v29, "dl_path"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v29, "_data"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v29, ".mp4"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_5

    sget-object v22, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v24 .. v24}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    const-string/jumbo v29, "width"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v29, "height"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    :goto_2
    new-instance v18, Lcom/android/phone/photoring/GifUtil;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/photoring/GifUtil;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_6

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v30, 0x2e

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v30

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ".gif"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/phone/photoring/PhotoringUtil;->renameImageToGif(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get6(Lcom/android/phone/photoring/PhotoRingMgr;)Landroid/content/Context;

    move-result-object v29

    new-instance v30, Landroid/content/Intent;

    const-string/jumbo v31, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    invoke-direct/range {v30 .. v32}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_3
    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0d091f

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingMgr;->prdownstarted:Z

    goto/16 :goto_0

    :cond_5
    sget-object v22, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0d091e

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_8
    const-string/jumbo v29, "ims_support_photo_ring"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get7(Lcom/android/phone/photoring/PhotoRingMgr;)Z

    move-result v29

    if-eqz v29, :cond_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-set1(Lcom/android/phone/photoring/PhotoRingMgr;Z)Z

    if-eqz p2, :cond_11

    const-string/jumbo v29, "dl_result"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_10

    const-string/jumbo v29, "dl_path"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v29, "feature_ktt"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "downloaded contentUrl : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "key_photoring_mt_content_url"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->prcheckmcidstarted:Z

    move/from16 v29, v0

    if-nez v29, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "photoring_content"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingMgr;->prcheckmcidstarted:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "photoring_content"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "downloaded path : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;->PHOTORING_CONTENT_DOWNLOADED:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap1(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;ZLjava/lang/String;)V

    const-string/jumbo v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get10(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-get11(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/phone/photoring/PhotoRingMgr;->-get12(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/phone/photoring/PhotoRingMgr;->-get10(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Lcom/android/phone/photoring/PhotoRingMgr;->getCallMessageChgCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_5
    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getServiceType()I

    move-result v29

    if-nez v29, :cond_0

    const-string/jumbo v29, ".mp4"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_d

    const/16 v29, 0x0

    :goto_6
    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/phone/photoring/PhotoRingMgr;->-get3(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->copyImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/android/phone/photoring/PhotoRingDB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get11(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoRingDB;->getCacheDataByCTN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    const-string/jumbo v30, "number exist in cache DB update"

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/phone/photoring/PhotoRingMgr;->-get3(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->deleteContentFile(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get11(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v29

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingDB;->updateCacheData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getChgUrl()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-set3(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get8(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->getCallMessageChgCall()V

    goto/16 :goto_5

    :cond_d
    const/16 v29, 0x1

    goto/16 :goto_6

    :cond_e
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/photoring/PhotoRingDB;->getCacheCount()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "number not exist in cache DB cacheDB count : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    const/16 v29, 0xa

    move/from16 v0, v29

    if-ne v5, v0, :cond_f

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/photoring/PhotoRingDB;->deleteOneItem()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/phone/photoring/PhotoRingMgr;->-get3(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->deleteContentFile(Ljava/lang/String;)Z

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get11(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v29

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingDB;->insertCacheData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_10
    const-string/jumbo v29, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "errCode : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->-wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    const-string/jumbo v29, "9999"

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0d0924

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0d0923

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v29, "feature_ktt"

    invoke-static/range {v29 .. v29}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0d0a05

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->-get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0d0923

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
