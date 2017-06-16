.class public Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;
.super Ljava/lang/Object;
.source "SdlMediaRecorder.java"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyErrorListener;,
        Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;,
        Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;,
        Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW:I = 0x2

.field public static final MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_INFO_COMPLETION_STATUS:I = 0x322

.field public static final MEDIA_RECORDER_INFO_DURATION_PROGRESS:I = 0x385

.field public static final MEDIA_RECORDER_INFO_FILESIZE_PROGRESS:I = 0x384

.field public static final MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final MEDIA_RECORDER_INFO_NO_NETWORK:I = 0x38e

.field public static final MEDIA_RECORDER_INFO_POOR_NETWORK:I = 0x38f

.field public static final MEDIA_RECORDER_INFO_PROGRESS_FRAME_STATUS:I = 0x323

.field public static final MEDIA_RECORDER_INFO_PROGRESS_TIME_STATUS:I = 0x324

.field public static final MEDIA_RECORDER_INFO_UNKNOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SdlMediaRecorder"


# instance fields
.field private mErrorListener:Ljava/lang/Object;

.field private mInfoListener:Ljava/lang/Object;

.field private mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

.field private mResultFilePath:Ljava/lang/String;

.field mSecMediaRecorder:Ljava/lang/Object;

.field mSecMediaRecorderClass:Ljava/lang/Class;

.field private mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mResultFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mInfoListener:Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mErrorListener:Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mResultFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->startImpl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setOnInfoListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setOnErrorListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    return-object v0
.end method

.method private createErrorListener()V
    .locals 9

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OnErrorListener"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    aput-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyErrorListener;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyErrorListener;-><init>(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$1;)V

    invoke-static {v6, v0, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mErrorListener:Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createInfoListener()V
    .locals 9

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OnInfoListener"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    aput-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;-><init>(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$1;)V

    invoke-static {v6, v0, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mInfoListener:Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createNewInstance()V
    .locals 2

    :try_start_0
    const-string v1, "com.sec.android.secmediarecorder.SecMediaRecorder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v4, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$1;->$SwitchMap$com$samsung$android$spen$libsdl$SdlMediaRecorder$ParamType:[I

    invoke-virtual {p2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :pswitch_0
    new-array v0, v6, [Ljava/lang/Class;

    iget-object v4, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    invoke-virtual {v4, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    new-array v1, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v6

    iget-object v4, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    invoke-virtual {v4, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    invoke-virtual {v4, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_0

    :pswitch_3
    new-array v2, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v6

    iget-object v4, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    invoke-virtual {v4, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isRecorderWorking()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "com.sec.android.secmediarecorder.SecMediaRecorder"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "isRecording"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private printLog(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private setDurationInterval(I)V
    .locals 6

    :try_start_0
    const-string v2, "setDurationInterval"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setOnErrorListener()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->createErrorListener()V

    :try_start_0
    const-string v2, "com.sec.android.secmediarecorder.SecMediaRecorder$OnErrorListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setOnErrorListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mErrorListener:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private setOnInfoListener()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->createInfoListener()V

    :try_start_0
    const-string v2, "com.sec.android.secmediarecorder.SecMediaRecorder$OnInfoListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setOnInfoListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mInfoListener:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private startImpl()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "start"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    throw v0

    :catch_5
    move-exception v0

    throw v0
.end method


# virtual methods
.method public cancel()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "stop"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    throw v0

    :catch_5
    move-exception v0

    throw v0
.end method

.method public isPauseSupported()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v3, "com.sec.android.secmediarecorder.SecMediaRecorder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/Class;

    const-string v3, "pause"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public pause(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "pause"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onPaused()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    throw v0

    :catch_5
    move-exception v0

    throw v0
.end method

.method public prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "prepare"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public prepareRecording(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->createNewInstance()V

    const v1, 0xac44

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setAudioSamplingRate(I)V

    const v1, 0x1f400

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setAudioEncodingBitRate(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setAudioChannels(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setAudioSource(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setOutputFormat(I)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setAudioEncoder(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setMaxDuration(I)V

    const/16 v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setDurationInterval(I)V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return v2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method public release()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "release"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "reset"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public resume(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "resume"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onResumed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    throw v0

    :catch_5
    move-exception v0

    throw v0
.end method

.method public setActionListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    return-void
.end method

.method public setAudioChannels(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "setAudioChannels"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public setAudioEncoder(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "setAudioEncoder"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v1, "setAudioEncodingBitRate"

    sget-object v2, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "setAudioSamplingRate"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public setAudioSource(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "setAudioSource"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public setMaxDuration(I)V
    .locals 6

    :try_start_0
    const-string v2, "setMaxDuration"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMaxFileSize(J)V
    .locals 7

    :try_start_0
    const-string v2, "setMaxFileSize"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Long:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "setOutputFile"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->String:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public setOutputFormat(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "setOutputFormat"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public setTimeListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mResultFilePath:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;-><init>(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V

    iput p3, v1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return v4

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public stop(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v2, "stop"

    sget-object v3, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onStopped()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    throw v0

    :catch_5
    move-exception v0

    throw v0
.end method
