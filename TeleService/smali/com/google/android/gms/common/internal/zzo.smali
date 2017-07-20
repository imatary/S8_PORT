.class public final Lcom/google/android/gms/common/internal/zzo;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final zzaml:I

.field private static final zzamm:Ljava/lang/String;


# instance fields
.field private final zzamn:Ljava/lang/String;

.field private final zzamo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, " PII_LOG"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x17

    sput v0, Lcom/google/android/gms/common/internal/zzo;->zzaml:I

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/internal/zzo;->zzamm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/internal/zzo;->zzamm:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x17

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "log tag cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "tag \"%s\" is longer than the %d character maximum"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzamn:Ljava/lang/String;

    if-nez p2, :cond_2

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/internal/zzo;->zzamm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzamo:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zzamo:Ljava/lang/String;

    goto :goto_1
.end method

.method private zzcK(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzamo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzamo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public zzA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzo;->zzbU(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/zzo;->zzcK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public zzbU(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzamn:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public zzz(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzo;->zzbU(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/zzo;->zzcK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
