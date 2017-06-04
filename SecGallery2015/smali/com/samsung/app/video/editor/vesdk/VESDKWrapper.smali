.class public Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;
.super Ljava/lang/Object;
.source "VESDKWrapper.java"

# interfaces
.implements Lcom/samsung/app/video/editor/external/VECallbackListener;


# instance fields
.field private mAppEntryPointRefCount:I

.field private mExportUIThreadHandler:Landroid/os/Handler;

.field private mPlayUIThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mAppEntryPointRefCount:I

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v0, p0}, Lcom/samsung/app/video/editor/external/VideoEditor;->setVEStateChangeListener(Lcom/samsung/app/video/editor/external/VECallbackListener;)V

    return-void
.end method


# virtual methods
.method public exitSDK()V
    .locals 2

    iget v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mAppEntryPointRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mAppEntryPointRefCount:I

    iget v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mAppEntryPointRefCount:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "VESDK_STATE"

    const-string/jumbo v1, "calling SDK terminate, mAppEntryPointRefCount = 0 "

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VideoEditor;->terminate()V

    :cond_0
    return-void
.end method

.method public launchSDK()V
    .locals 2

    iget v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mAppEntryPointRefCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mAppEntryPointRefCount:I

    const-string/jumbo v0, "VESDK_STATE"

    const-string/jumbo v1, "calling SDK Launch, mAppEntryPointRefCount = 0 "

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VideoEditor;->launch()V

    :cond_0
    iget v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mAppEntryPointRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mAppEntryPointRefCount:I

    return-void
.end method

.method public onEvent(Lcom/samsung/app/video/editor/external/VECallback;)V
    .locals 3

    const-string/jumbo v0, "VESDK_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper$1;->$SwitchMap$com$samsung$app$video$editor$external$VECallback:[I

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/VECallback;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2714

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2716

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mExportUIThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mExportUIThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mExportUIThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mExportUIThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mExportUIThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mExportUIThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mExportUIThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mExportUIThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mExportUIThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mExportUIThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public setPreviewMessageHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public startExport(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;Landroid/os/Handler;)V
    .locals 1

    iput-object p3, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mExportUIThreadHandler:Landroid/os/Handler;

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/app/video/editor/external/VideoEditor;->export(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;)Z

    return-void
.end method

.method public startPlay(ILcom/samsung/app/video/editor/external/TranscodeElement;Landroid/os/Handler;)Z
    .locals 1

    iput-object p3, p0, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->mPlayUIThreadHandler:Landroid/os/Handler;

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/app/video/editor/external/VideoEditor;->play(ILcom/samsung/app/video/editor/external/TranscodeElement;)Z

    move-result v0

    return v0
.end method
