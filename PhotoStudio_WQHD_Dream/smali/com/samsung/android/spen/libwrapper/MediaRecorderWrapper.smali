.class public Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;
.super Ljava/lang/Object;
.source "MediaRecorderWrapper.java"


# static fields
.field private static isSeDevice:Z


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->isSeDevice:Z

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSamsungDevice(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>()V

    throw v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->isSeDevice:Z

    :try_start_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    new-instance v2, Lcom/samsung/android/spen/libse/SeMediaRecorder;

    invoke-direct {v2}, Lcom/samsung/android/spen/libse/SeMediaRecorder;-><init>()V

    invoke-direct {v1, v2}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;-><init>(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v2, "SE"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->isSeDevice:Z

    :try_start_1
    new-instance v1, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    new-instance v2, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-direct {v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;-><init>()V

    invoke-direct {v1, v2}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;-><init>(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v2, "SDL"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static create(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;)Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    invoke-direct {v1, p0}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;-><init>(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v2, "SE"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static isRecorderWorking()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->isSeDevice:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->isRecorderWorking()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->isRecorderWorking()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public cancel()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public isPauseSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->isPauseSupported()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public pause(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->pause(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public prepareRecording(Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->prepareRecording(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public resume(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->resume(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setActionListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->setActionListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setAudioEncoder(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->setAudioEncoder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setAudioSource(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->setAudioSource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->setOutputFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setOutputFormat(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->setOutputFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setTimeListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->setTimeListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->start(Ljava/lang/String;Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public stop(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->stop(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
