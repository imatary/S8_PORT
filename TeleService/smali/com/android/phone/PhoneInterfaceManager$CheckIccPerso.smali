.class Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckIccPerso"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;

.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method static synthetic -set0(Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->mDone:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->mResult:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/internal/telephony/IccCard;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->mDone:Z

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->mResult:Z

    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->mSimCard:Lcom/android/internal/telephony/IccCard;

    return-void
.end method


# virtual methods
.method declared-synchronized checkPerso(Ljava/lang/String;)Z
    .locals 12

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_0
    :try_start_3
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x64

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    const/4 v6, 0x0

    :try_start_4
    const-class v7, Lcom/android/internal/telephony/IccCard;

    const-string/jumbo v8, "supplyPerso"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->getClass()Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    invoke-virtual {v10}, Landroid/os/Message;->getClass()Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v7, v7, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    iget-boolean v7, p0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v7, :cond_1

    :try_start_6
    const-string/jumbo v7, "PhoneInterfaceManager"

    const-string/jumbo v8, "wait for done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_1
    const-string/jumbo v7, "PhoneInterfaceManager"

    const-string/jumbo v8, "done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->mResult:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v7

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v5

    goto :goto_1
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$CheckIccPerso;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
