.class Lcom/android/phone/photoring/PhotoRingScreen$6;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Lcom/android/phone/photoring/ICallMessageNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoRingScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingScreen;


# direct methods
.method private static synthetic -getcom-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->-com-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->-com-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues:[I

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

    const/4 v2, 0x5

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

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CALLMESSAGE_CHG_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CONTENT_SPEC_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->NONE:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->SET_REALTIME_SERVICEINFO_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->UPLOAD_CONTENT_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->-com-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues:[I

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

.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/android/phone/photoring/CallMessageConstants$RequestType;Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ICallMessageNetworkListener is called ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ") on PhotoRingScreen"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap6(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/photoring/PhotoRingScreen$6;->-getcom-android-phone-photoring-CallMessageConstants$RequestTypeSwitchesValues()[I

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const-string/jumbo v14, "Recieved etc type: not handled here"

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap5(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    const-string/jumbo v13, "result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v13, "0019"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-set2(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Recieved GET_CONTENT_SPEC_CALL:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/android/phone/photoring/PhotoRingScreen;->-get0()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap6(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/phone/photoring/PhotoringUtil;->setContentSpecFromBundle(Landroid/os/Bundle;)V

    sget-object v13, Lcom/android/phone/photoring/PhotoringUtil;->contentSpec:Lcom/android/phone/photoring/PhotoringUtil$ContentSpec;

    iget v13, v13, Lcom/android/phone/photoring/PhotoringUtil$ContentSpec;->video_editing_duration:I

    if-eqz v13, :cond_0

    sget-object v13, Lcom/android/phone/photoring/PhotoringUtil;->contentSpec:Lcom/android/phone/photoring/PhotoringUtil$ContentSpec;

    iget v13, v13, Lcom/android/phone/photoring/PhotoringUtil$ContentSpec;->video_editing_duration:I

    mul-int/lit16 v13, v13, 0x3e8

    sput v13, Lcom/android/phone/photoring/PhotoRingScreen;->VIDEO_DURATION_LIMIT:I

    goto :goto_0

    :cond_2
    const-string/jumbo v13, "bundle not null"

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get14(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get14(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-set10(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_3
    if-eqz p2, :cond_9

    const-string/jumbo v13, "result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Recieved UPLOAD_CONTENT_CALL:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/android/phone/photoring/PhotoRingScreen;->-get0()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap6(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    const-string/jumbo v13, "0000"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const-string/jumbo v14, "content_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-set5(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get7(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoringUtil;->setContentUrl(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get15(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoringUtil;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "call setRealtimeServiceInfoCall message : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap5(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get11(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get11(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "#"

    const-string/jumbo v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v13, "feature_lgt"

    invoke-static {v13}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get13(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-get7(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v8, v6, v14, v15}, Lcom/android/phone/photoring/PhotoRingMgr;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    move-object v13, v11

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get13(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-get7(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v8, v6, v14}, Lcom/android/phone/photoring/PhotoRingMgr;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v13, "0600"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string/jumbo v13, "feature_lgt"

    invoke-static {v13}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-get5(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v14

    const v15, 0x7f0d097d

    invoke-static {v13, v15, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap11(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v13, "feature_ktt"

    invoke-static {v13}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-get5(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v14

    const v15, 0x7f0d0a6f

    invoke-static {v13, v15, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap11(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-get5(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v14

    const v15, 0x7f0d097d

    invoke-static {v13, v15, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap11(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    if-nez p2, :cond_a

    const/4 v13, 0x0

    :goto_3
    invoke-static {v14, v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap9(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v13, "errMsg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :pswitch_2
    if-eqz p2, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Recieved SET_REALTIME_SERVICEINFO_CALL:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap5(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    const-string/jumbo v13, "result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const-string/jumbo v14, "chg_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-set3(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get4(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoringUtil;->setChgUrl(Ljava/lang/String;)V

    const-string/jumbo v13, "0000"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get14(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get14(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-set10(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap7(Lcom/android/phone/photoring/PhotoRingScreen;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v13, "0020"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const-string/jumbo v13, "feature_ktt"

    invoke-static {v13}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v14}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0a71

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap10(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v13, "0600"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    const-string/jumbo v13, "feature_ktt"

    invoke-static {v13}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-get5(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v14

    const v15, 0x7f0d0a6f

    invoke-static {v13, v15, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap11(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-get5(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v14

    const v15, 0x7f0d097d

    invoke-static {v13, v15, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap11(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    if-nez p2, :cond_10

    const/4 v13, 0x0

    :goto_4
    invoke-static {v14, v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap9(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v13, "errMsg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get14(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get14(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-set10(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_11
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get17(Lcom/android/phone/photoring/PhotoRingScreen;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "dl_result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-set11(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    if-eqz v10, :cond_17

    const-string/jumbo v13, "dl_path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get3(Lcom/android/phone/photoring/PhotoRingScreen;)Z

    move-result v13

    if-eqz v13, :cond_15

    new-instance v4, Lcom/android/phone/photoring/GifUtil;

    invoke-direct {v4}, Lcom/android/phone/photoring/GifUtil;-><init>()V

    invoke-virtual {v4, v7}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x2e

    invoke-virtual {v7, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v7, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".gif"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/phone/photoring/PhotoringUtil;->renameImageToGif(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object v7, v9

    :cond_12
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.VIEW"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get18(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "com.android.phone.fileprovider"

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14, v15}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v7}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_13

    invoke-virtual {v4, v7}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    :cond_13
    const-string/jumbo v13, "image/*"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v13, v5}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->finish()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-set1(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v13, "video/*"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "from_photoring_to_videoplayer"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    :catch_0
    move-exception v3

    const-string/jumbo v13, "PhotoRingScreen"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Couldn\'t show image/video "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_15
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "photoring_data.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-set12(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-set6(Lcom/android/phone/photoring/PhotoRingScreen;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap8(Lcom/android/phone/photoring/PhotoRingScreen;)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-get18(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "photoring_data.png"

    invoke-static {v13, v7, v14}, Lcom/android/phone/photoring/PhotoringUtil;->setVideoFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->-set12(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-set6(Lcom/android/phone/photoring/PhotoRingScreen;I)I

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    sput-object v13, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mUriVideos : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap6(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "path : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap6(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v13}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap8(Lcom/android/phone/photoring/PhotoRingScreen;)V

    goto/16 :goto_0

    :cond_17
    const v2, 0x7f0d0986

    const-string/jumbo v13, "feature_ktt"

    invoke-static {v13}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18

    const v2, 0x7f0d0987

    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v14, Lcom/android/phone/photoring/PhotoRingScreen$6$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/phone/photoring/PhotoRingScreen$6$1;-><init>(Lcom/android/phone/photoring/PhotoRingScreen$6;)V

    invoke-static {v13, v2, v14}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap11(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
