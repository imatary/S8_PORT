.class public Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "AndroidBeamCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$AndroidBeamUtils;,
        Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;,
        Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;,
        Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;
    }
.end annotation


# static fields
.field private static final ACTION_ABEAM_POPUP:Ljava/lang/String; = "com.samsung.nfc.AndroidBeamPopUp"

.field private static final ACTION_SBEAM_POPUP:Ljava/lang/String; = "com.sec.android.directshare.DirectSharePopUp"

.field private static final ACTION_START:Ljava/lang/String; = "com.sec.android.directshare.DIRECT_SHARE_START_ACTION"

.field private static final APP_MIME:Ljava/lang/String; = "text/DirectShareGallery"

.field private static final EXTRA_KEY_POPUP_MODE:Ljava/lang/String; = "POPUP_MODE"

.field private static final EXTRA_VAL_CLOUD_FILE:Ljava/lang/String; = "from_cloud_file"

.field private static final EXTRA_VAL_DRM_FILE:Ljava/lang/String; = "from_drm_file"

.field private static final EXTRA_VAL_EXCCEED_COUNT:Ljava/lang/String; = "file_limit_exceed"

.field private static final EXTRA_VAL_NO_FILE:Ljava/lang/String; = "no_file_selected"

.field private static final KEY_SBEAM_ONOFF:Ljava/lang/String; = "SBeam_on_off"

.field private static final KEY_SBEAM_SUPPORT:Ljava/lang/String; = "SBeam_support"

.field private static final PACKAGE_NAME_SBEAM:Ljava/lang/String; = "com.sec.android.directshare"

.field private static final PACKAGE_NAME_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final PREP_NAME_SBEAM:Ljava/lang/String; = "pref_sbeam"

.field private static final SHARE_MAX_ITEM_LIMIT:I = 0x1f4

.field private static final STATUS_EXCEED_SELECTED_COUNT:I = 0x5

.field private static final STATUS_IS_CLOUD_FILE:I = 0x3

.field private static final STATUS_IS_DRM:I = 0x4

.field private static final STATUS_NONE:I = 0x0

.field private static final STATUS_NO_FILE_SELECTED:I = 0x2

.field private static final STATUS_PUSH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AndroidBeamCmd"

.field private static final TAGClass:Ljava/lang/String; = "SbeamHelper"

.field private static isSbeamOn:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialog:Landroid/app/Dialog;

.field private mListener:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;

.field private mNdefStatus:I

.field private mSbeamCompleteCb:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->isSbeamOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mSbeamCompleteCb:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I

    return-void
.end method

.method private IsShowErrorInfoDialog(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ShowErrorInfoDialog(I)V
    .locals 10

    const v9, 0x7f0a02f4

    const/4 v8, 0x5

    const v2, 0x7f0a02da

    const v1, 0x7f0a01ab

    const/4 v0, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    const-string/jumbo v3, "AndroidBeamCmd"

    const-string/jumbo v4, "no selected file!!. but not show dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    const v2, 0x7f0a048f

    const v1, 0x7f0a01c3

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_3
    if-eq p1, v8, :cond_6

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$3;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    const v2, 0x7f0a048f

    const v1, 0x7f0a01c2

    goto :goto_1

    :cond_5
    if-ne p1, v8, :cond_2

    const v2, 0x7f0a01a6

    const v1, 0x7f0a01a5

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a01a5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    if-ne p1, v8, :cond_0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$4;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$4;-><init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->initBeamHelper()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->isSbeamOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mListener:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->isSbeamOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->IsShowErrorInfoDialog(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->isUseGalleryDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->ShowErrorInfoDialog(I)V

    return-void
.end method

.method private getSBeamPreference()Landroid/content/SharedPreferences;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "com.android.settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AndroidBeamCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SbeamHelperBeamHelper : NameNotFoundException > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "AndroidBeamCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SbeamHelperBeamHelper : SecurityException > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "pref_sbeam"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_1
.end method

.method private initBeamHelper()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    const-string/jumbo v5, "com.android.settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "AndroidBeamCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SbeamHelperBeamHelper : NameNotFoundException > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v4, "AndroidBeamCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SbeamHelperBeamHelper : SecurityException > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v4, "AndroidBeamCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SbeamHelperBeamHelper : ArrayIndexOutOfBoundsException > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v4, "AndroidBeamCmd"

    const-string/jumbo v5, "SbeamHelperSbeamHelper : setBeamUris > can\'t load nfcadapter"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;

    invoke-direct {v0, p0, v8}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;-><init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$1;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->isSBeamSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;

    invoke-direct {v4, p0, v8}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;-><init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$1;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mSbeamCompleteCb:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;

    :cond_2
    iput v7, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I

    :try_start_1
    new-instance v4, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$2;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4, v5}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->isSbeamOn()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "AndroidBeamCmd"

    const-string/jumbo v5, "setBeamUris : setSbeam"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/app/Activity;

    invoke-virtual {v2, v0, v4, v5}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mSbeamCompleteCb:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$SbeamPushCompleteCallback;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/app/Activity;

    invoke-virtual {v2, v4, v5, v6}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4, v5}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    const-string/jumbo v4, "AndroidBeamCmd"

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_4
    move-exception v1

    const-string/jumbo v4, "AndroidBeamCmd"

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_5
    move-exception v1

    const-string/jumbo v4, "AndroidBeamCmd"

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    :try_start_3
    const-string/jumbo v4, "AndroidBeamCmd"

    const-string/jumbo v5, "setBeamUris : setAbeam"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/app/Activity;

    invoke-virtual {v2, v0, v4, v5}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/app/Activity;

    invoke-virtual {v2, v4, v5, v6}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1
.end method

.method private isSBeamSupported()Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->getSBeamPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "SBeam_support"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v3, "AndroidBeamCmd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SbeamHelperSbeamHelper : SBeam is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_1

    const-string/jumbo v2, "supported"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string/jumbo v2, "not supported"

    goto :goto_0
.end method

.method private isSbeamOn()Z
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->isSBeamSupported()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->getSBeamPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v3, "SBeam_on_off"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    sput-boolean v2, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->isSbeamOn:Z

    sget-boolean v2, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->isSbeamOn:Z

    goto :goto_0
.end method

.method private isUseGalleryDialog()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mListener:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)V

    const-string/jumbo v3, "AndroidBeamInit"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
