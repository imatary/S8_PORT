.class public final Lcom/google/android/gms/common/internal/zzf;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzf$zza;
    }
.end annotation


# instance fields
.field private final zzTI:Landroid/accounts/Account;

.field private final zzUW:Ljava/lang/String;

.field private final zzagh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzagj:I

.field private final zzagk:Landroid/view/View;

.field private final zzagl:Ljava/lang/String;

.field private final zzalb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzalc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/internal/zzf$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzald:Lcom/google/android/gms/internal/zzro;

.field private zzale:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzro;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/internal/zzf$zza;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzro;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzTI:Landroid/accounts/Account;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzagh:Ljava/util/Set;

    if-eqz p3, :cond_1

    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzf;->zzalc:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/zzf;->zzagk:Landroid/view/View;

    iput p4, p0, Lcom/google/android/gms/common/internal/zzf;->zzagj:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/zzf;->zzUW:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/zzf;->zzagl:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/zzf;->zzald:Lcom/google/android/gms/internal/zzro;

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzagh:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzalc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzalb:Ljava/util/Set;

    return-void

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_1
    sget-object p3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzf$zza;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzf$zza;->zzXf:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzTI:Landroid/accounts/Account;

    return-object v0
.end method

.method public zza(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzale:Ljava/lang/Integer;

    return-void
.end method

.method public zzqq()Landroid/accounts/Account;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzTI:Landroid/accounts/Account;

    if-nez v0, :cond_0

    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "<<default account>>"

    const-string/jumbo v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzTI:Landroid/accounts/Account;

    goto :goto_0
.end method

.method public zzqs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzagh:Ljava/util/Set;

    return-object v0
.end method

.method public zzqt()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzalb:Ljava/util/Set;

    return-object v0
.end method

.method public zzqu()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/internal/zzf$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzalc:Ljava/util/Map;

    return-object v0
.end method

.method public zzqv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzUW:Ljava/lang/String;

    return-object v0
.end method

.method public zzqw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzagl:Ljava/lang/String;

    return-object v0
.end method

.method public zzqy()Lcom/google/android/gms/internal/zzro;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzald:Lcom/google/android/gms/internal/zzro;

    return-object v0
.end method

.method public zzqz()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzale:Ljava/lang/Integer;

    return-object v0
.end method
