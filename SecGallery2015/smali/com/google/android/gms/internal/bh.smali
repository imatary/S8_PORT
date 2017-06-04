.class public final Lcom/google/android/gms/internal/bh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bg;


# instance fields
.field public final eg:Lcom/google/android/gms/internal/co;

.field public final fR:Lcom/google/android/gms/internal/be;

.field public final fS:Lcom/google/android/gms/internal/q;

.field public final fT:Lcom/google/android/gms/internal/bi;

.field public final fU:Lcom/google/android/gms/internal/cq;

.field public final fV:Lcom/google/android/gms/internal/ag;

.field public final fW:Ljava/lang/String;

.field public final fX:Z

.field public final fY:Ljava/lang/String;

.field public final fZ:Lcom/google/android/gms/internal/bl;

.field public final fz:Ljava/lang/String;

.field public final ga:I

.field public final orientation:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bh;->CREATOR:Lcom/google/android/gms/internal/bg;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/be;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/co;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bh;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bh;->fR:Lcom/google/android/gms/internal/be;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/b$a;->z(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/q;

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->fS:Lcom/google/android/gms/internal/q;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/b$a;->z(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bi;

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->fT:Lcom/google/android/gms/internal/bi;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/b$a;->z(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cq;

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->fU:Lcom/google/android/gms/internal/cq;

    invoke-static {p6}, Lcom/google/android/gms/dynamic/b$a;->z(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ag;

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->fV:Lcom/google/android/gms/internal/ag;

    iput-object p7, p0, Lcom/google/android/gms/internal/bh;->fW:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/bh;->fX:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/bh;->fY:Ljava/lang/String;

    invoke-static {p10}, Lcom/google/android/gms/dynamic/b$a;->z(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bl;

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->fZ:Lcom/google/android/gms/internal/bl;

    iput p11, p0, Lcom/google/android/gms/internal/bh;->orientation:I

    iput p12, p0, Lcom/google/android/gms/internal/bh;->ga:I

    iput-object p13, p0, Lcom/google/android/gms/internal/bh;->fz:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/bh;->eg:Lcom/google/android/gms/internal/co;

    return-void
.end method


# virtual methods
.method U()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->fS:Lcom/google/android/gms/internal/q;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->g(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method V()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->fT:Lcom/google/android/gms/internal/bi;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->g(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method W()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->fU:Lcom/google/android/gms/internal/cq;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->g(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method X()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->fV:Lcom/google/android/gms/internal/ag;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->g(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method Y()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->fZ:Lcom/google/android/gms/internal/bl;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->g(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bg;->a(Lcom/google/android/gms/internal/bh;Landroid/os/Parcel;I)V

    return-void
.end method
