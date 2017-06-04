.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Ljava/lang/Object;


# static fields
.field public static final iP:Lcom/google/android/gms/common/ConnectionResult;


# instance fields
.field private final iC:I

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->iP:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->iC:I

    iput-object p2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private aH()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->iC:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->iC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "SUCCESS"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "SERVICE_MISSING"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "SERVICE_DISABLED"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "SIGN_IN_REQUIRED"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "INVALID_ACCOUNT"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "RESOLUTION_REQUIRED"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "NETWORK_ERROR"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "INTERNAL_ERROR"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "SERVICE_INVALID"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "DEVELOPER_ERROR"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "LICENSE_CHECK_FAILED"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/dl;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/dl$a;

    move-result-object v0

    const-string/jumbo v1, "statusCode"

    invoke-direct {p0}, Lcom/google/android/gms/common/ConnectionResult;->aH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/dl$a;

    move-result-object v0

    const-string/jumbo v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/dl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
