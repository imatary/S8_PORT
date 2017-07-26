.class public Lcom/samsung/android/game/gametools/setting/activity/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# instance fields
.field audio_buffer_size:Landroid/widget/Spinner;

.field audio_read_thread_sleep_time:Landroid/widget/Spinner;

.field audio_read_thread_wait_cnt:Landroid/widget/Spinner;

.field audio_read_thread_wait_time:Landroid/widget/Spinner;

.field audio_source:Landroid/widget/Spinner;

.field bitrate:Landroid/widget/Spinner;

.field circular_buffering_time:Landroid/widget/Spinner;

.field codec_input_wait_cnt:Landroid/widget/Spinner;

.field codec_input_wait_time:Landroid/widget/Spinner;

.field frame_rate:Landroid/widget/Spinner;

.field jitter_buffer_size:Landroid/widget/Spinner;

.field private mAsyncAfterFilter:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

.field mHandler:Landroid/os/Handler;

.field mIsRecording:Z

.field private mMediaScanConnection:Landroid/media/MediaScannerConnection;

.field resolution:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->mIsRecording:Z

    new-instance v0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->mAsyncAfterFilter:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->startMediaScan(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;)Landroid/media/MediaScannerConnection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->mMediaScanConnection:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->callGalleryFolder(Landroid/content/Context;)V

    return-void
.end method

.method private callGalleryFolder(Landroid/content/Context;)V
    .locals 6

    const-string/jumbo v3, "Game Tools"

    invoke-static {v3}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getGameRecordingSavedDirectoryAbsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/local/all/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.gallery3d"

    const-string/jumbo v5, "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.gallery.action.SHORTCUT_VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x14008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "appname"

    const-string/jumbo v4, "gametools"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getBitrateIndex()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->getBitrate(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const/4 v1, 0x7

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xf4240 -> :sswitch_7
        0x1e8480 -> :sswitch_6
        0x2dc6c0 -> :sswitch_5
        0x4c4b40 -> :sswitch_4
        0x5b8d80 -> :sswitch_3
        0x7a1200 -> :sswitch_2
        0x989680 -> :sswitch_1
    .end sparse-switch
.end method

.method private getResolutionIndex()I
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/model/SettingData;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    array-length v0, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v3, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private startMediaScan(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->mMediaScanConnection:Landroid/media/MediaScannerConnection;

    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$15;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$15;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->mMediaScanConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->mMediaScanConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method changeSpinners(Landroid/view/ViewGroup;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v3, "ViewName"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, v0, Landroid/widget/Spinner;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Spinner"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->changeSpinners(Landroid/view/ViewGroup;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method changeSpinners(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v4, "ViewName"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->changeSpinners(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public endRecord(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0c0007

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->stopRecord()V

    const-string/jumbo v0, "End Recording"

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v12, 0x7f030065

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->refreshText()V

    const v12, 0x7f0c0007

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setEnabled(Z)V

    const v12, 0x7f0c016d

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->frame_rate:Landroid/widget/Spinner;

    new-instance v9, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09000a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->frame_rate:Landroid/widget/Spinner;

    invoke-virtual {v12, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->frame_rate:Landroid/widget/Spinner;

    sget v13, Lcom/gdg/recordinglib/GameRecorderDefine;->FRAME_RATE:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->frame_rate:Landroid/widget/Spinner;

    new-instance v13, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$1;

    invoke-direct {v13, p0, v9}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$1;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v12, 0x7f0c016f

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->resolution:Landroid/widget/Spinner;

    new-instance v11, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09000c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->resolution:Landroid/widget/Spinner;

    invoke-virtual {v12, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->resolution:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResolutionIndex()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->resolution:Landroid/widget/Spinner;

    new-instance v13, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$2;

    invoke-direct {v13, p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$2;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v12, 0x7f0c0171

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->bitrate:Landroid/widget/Spinner;

    new-instance v5, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090005

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->bitrate:Landroid/widget/Spinner;

    invoke-virtual {v12, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->bitrate:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getBitrateIndex()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->bitrate:Landroid/widget/Spinner;

    new-instance v13, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$3;

    invoke-direct {v13, p0, v5}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$3;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v12, 0x7f0c0173

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_source:Landroid/widget/Spinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090004

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_source:Landroid/widget/Spinner;

    invoke-virtual {v12, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_source:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/game/gamecast/common/model/SettingData;->getAudioSource(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_source:Landroid/widget/Spinner;

    new-instance v13, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$4;

    invoke-direct {v13, p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$4;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v12, 0x7f0c0175

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_buffer_size:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v14, 0x7f090000

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_buffer_size:Landroid/widget/Spinner;

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_buffer_size:Landroid/widget/Spinner;

    sget v13, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_BUFFER_SIZE:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_buffer_size:Landroid/widget/Spinner;

    new-instance v13, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$5;

    invoke-direct {v13, p0, v0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$5;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v12, 0x7f0c0177

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->circular_buffering_time:Landroid/widget/Spinner;

    new-instance v6, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090006

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->circular_buffering_time:Landroid/widget/Spinner;

    invoke-virtual {v12, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->circular_buffering_time:Landroid/widget/Spinner;

    sget v13, Lcom/gdg/recordinglib/GameRecorderDefine;->CIRCULAR_BUFFERING_TIME:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->circular_buffering_time:Landroid/widget/Spinner;

    new-instance v13, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$6;

    invoke-direct {v13, p0, v6}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$6;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v12, 0x7f0c0179

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->jitter_buffer_size:Landroid/widget/Spinner;

    new-instance v10, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09000b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->jitter_buffer_size:Landroid/widget/Spinner;

    invoke-virtual {v12, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->jitter_buffer_size:Landroid/widget/Spinner;

    sget v13, Lcom/gdg/recordinglib/GameRecorderDefine;->JITTER_BUFFER_SIZE:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->jitter_buffer_size:Landroid/widget/Spinner;

    new-instance v13, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$7;

    invoke-direct {v13, p0, v10}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$7;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v12, 0x7f0c017b

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_read_thread_wait_time:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090003

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_read_thread_wait_time:Landroid/widget/Spinner;

    invoke-virtual {v12, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_read_thread_wait_time:Landroid/widget/Spinner;

    sget v13, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_WAIT_TIME:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_read_thread_wait_time:Landroid/widget/Spinner;

    new-instance v13, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$8;

    invoke-direct {v13, p0, v3}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$8;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v12, 0x7f0c017d

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_read_thread_wait_cnt:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090002

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_read_thread_wait_cnt:Landroid/widget/Spinner;

    invoke-virtual {v12, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_read_thread_wait_cnt:Landroid/widget/Spinner;

    sget v13, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_WAIT_CNT:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_read_thread_wait_cnt:Landroid/widget/Spinner;

    new-instance v13, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$9;

    invoke-direct {v13, p0, v2}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$9;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v12, 0x7f0c017f

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_read_thread_sleep_time:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090001

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_read_thread_sleep_time:Landroid/widget/Spinner;

    invoke-virtual {v12, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_read_thread_sleep_time:Landroid/widget/Spinner;

    sget v13, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_SLEEP_TIME:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->audio_read_thread_sleep_time:Landroid/widget/Spinner;

    new-instance v13, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$10;

    invoke-direct {v13, p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$10;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v12, 0x7f0c0181

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->codec_input_wait_time:Landroid/widget/Spinner;

    new-instance v8, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090008

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->codec_input_wait_time:Landroid/widget/Spinner;

    invoke-virtual {v12, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->codec_input_wait_time:Landroid/widget/Spinner;

    sget v13, Lcom/gdg/recordinglib/GameRecorderDefine;->CODEC_INPUT_WAIT_TIME:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->codec_input_wait_time:Landroid/widget/Spinner;

    new-instance v13, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$11;

    invoke-direct {v13, p0, v8}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$11;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v12, 0x7f0c0183

    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->codec_input_wait_cnt:Landroid/widget/Spinner;

    new-instance v7, Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090007

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->codec_input_wait_cnt:Landroid/widget/Spinner;

    invoke-virtual {v12, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->codec_input_wait_cnt:Landroid/widget/Spinner;

    sget v13, Lcom/gdg/recordinglib/GameRecorderDefine;->CODEC_INPUT_WAIT_CNT:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->codec_input_wait_cnt:Landroid/widget/Spinner;

    new-instance v13, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$12;

    invoke-direct {v13, p0, v7}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$12;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    iput-object v12, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method refreshText()V
    .locals 6

    const v5, 0x7f0c0170

    const v4, 0x7f0c0172

    const v1, 0x7f0c016e

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resolution : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/model/SettingData;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getBitrate(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bitrate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getAudioSource(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :goto_1
    const v1, 0x7f0c0174

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audio_buffer_size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_BUFFER_SIZE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c0176

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "circular_buffering_time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->CIRCULAR_BUFFERING_TIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c0178

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "jitter_buffer_size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->JITTER_BUFFER_SIZE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c017a

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audio_read_thread_wait_time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_WAIT_TIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c017c

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audio_read_thread_wait_cnt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_WAIT_CNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c017e

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audio_read_thread_sleep_time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_SLEEP_TIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c0180

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "codec_input_wait_time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->CODEC_INPUT_WAIT_TIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c0182

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "codec_input_wait_cnt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->CODEC_INPUT_WAIT_CNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c016c

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Frame Rate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->FRAME_RATE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "Bitrate : AUTO"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "Audio Source : None"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "Audio Source : Integrated"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "Audio Source : System Only"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startRecord(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v1, 0x7f0c000b

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getAudioSource(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    move-result-object v1

    const-string/jumbo v2, "Game Tools"

    const-string/jumbo v3, "com.samsung.android.game.gametools"

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->mAsyncAfterFilter:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->startRecord(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;)V

    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean v6, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->mIsRecording:Z

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->changeSpinners(Z)V

    const-string/jumbo v1, "Start Recording"

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$13;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
