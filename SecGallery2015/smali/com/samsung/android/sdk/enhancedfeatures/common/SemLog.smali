.class public Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;
.super Ljava/lang/Object;
.source "SemLog.java"


# static fields
.field private static D_FLAG:Z

.field public static final ENG_VER:Z

.field private static E_FLAG:Z

.field private static I_FLAG:Z

.field public static SEC_LOG:Z

.field private static final SHIP_BUILD:Z

.field private static V_FLAG:Z

.field private static W_FLAG:Z

.field private static final mShipBuild:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v1, "ro.product_ship"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->mShipBuild:Ljava/lang/String;

    sput-boolean v4, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->E_FLAG:Z

    sput-boolean v4, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->D_FLAG:Z

    sput-boolean v4, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->I_FLAG:Z

    sput-boolean v4, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->W_FLAG:Z

    sput-boolean v4, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->V_FLAG:Z

    :try_start_0
    const-string/jumbo v1, "com.samsung.android.util.SemLog"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SEC_LOG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "LibSE Log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SEC_LOG - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SEC_LOG:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->isEngBinary()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->ENG_VER:Z

    const-string/jumbo v1, "true"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->mShipBuild:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v4, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SHIP_BUILD:Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sput-boolean v5, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SEC_LOG:Z

    goto :goto_0

    :cond_0
    sput-boolean v5, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SHIP_BUILD:Z

    goto :goto_1
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->D_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->I_FLAG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static isEngBinary()Z
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "LibSE Log"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "LibSE Log"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "LibSE Log"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "LibSE Log"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v1, "LibSE Log"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static secD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SEC_LOG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static secE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SEC_LOG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static secI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SEC_LOG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static secV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SEC_LOG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static secW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SEC_LOG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
