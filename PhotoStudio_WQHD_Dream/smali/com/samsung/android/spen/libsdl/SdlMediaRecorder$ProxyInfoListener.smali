.class Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;
.super Ljava/lang/Object;
.source "SdlMediaRecorder.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyInfoListener"
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "onInfo"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;


# direct methods
.method private constructor <init>(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;-><init>(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V

    return-void
.end method

.method private onInfo(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    invoke-static {v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$700(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    :sswitch_0
    return-void

    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    invoke-static {v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$700(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    move-result-object v0

    const/16 v1, 0x320

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;->onInfo(II)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;
    invoke-static {v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$800(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    move-result-object v0

    div-int/lit16 v1, p2, 0x3e8

    invoke-interface {v0, v1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;->onUpdateTime(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    invoke-static {v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$700(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    move-result-object v0

    const/16 v1, 0x321

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;->onInfo(II)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_1
        0x321 -> :sswitch_3
        0x322 -> :sswitch_0
        0x323 -> :sswitch_0
        0x324 -> :sswitch_0
        0x384 -> :sswitch_0
        0x385 -> :sswitch_2
        0x38e -> :sswitch_0
        0x38f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-object v2, p3, v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aget-object v2, p3, v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;->onInfo(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected invocation exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
