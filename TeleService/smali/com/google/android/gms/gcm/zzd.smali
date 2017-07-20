.class public Lcom/google/android/gms/gcm/zzd;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final zzaMc:Lcom/google/android/gms/gcm/zzd;

.field public static final zzaMd:Lcom/google/android/gms/gcm/zzd;


# instance fields
.field private final zzaMe:I

.field private final zzaMf:I

.field private final zzaMg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xe10

    const/16 v2, 0x1e

    new-instance v0, Lcom/google/android/gms/gcm/zzd;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/zzd;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzd;->zzaMc:Lcom/google/android/gms/gcm/zzd;

    new-instance v0, Lcom/google/android/gms/gcm/zzd;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/zzd;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzd;->zzaMd:Lcom/google/android/gms/gcm/zzd;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/gcm/zzd;->zzaMe:I

    iput p2, p0, Lcom/google/android/gms/gcm/zzd;->zzaMf:I

    iput p3, p0, Lcom/google/android/gms/gcm/zzd;->zzaMg:I

    return-void
.end method
