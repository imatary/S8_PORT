.class public final Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/internal/model/moments/zzb;

.field private static final zzbeM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field zzJN:Ljava/lang/String;

.field final zzbeN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field zzbfA:Ljava/lang/String;

.field zzbfI:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field zzbfJ:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field zzyv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/plus/internal/model/moments/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/model/moments/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/moments/zzb;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbeM:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbeM:Ljava/util/HashMap;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "id"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbeM:Ljava/util/HashMap;

    const-string/jumbo v1, "result"

    const-string/jumbo v2, "result"

    const/4 v3, 0x4

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbeM:Ljava/util/HashMap;

    const-string/jumbo v1, "startDate"

    const-string/jumbo v2, "startDate"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbeM:Ljava/util/HashMap;

    const-string/jumbo v1, "target"

    const-string/jumbo v2, "target"

    const/4 v3, 0x6

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbeM:Ljava/util/HashMap;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "type"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->mVersionCode:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbeN:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbeN:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->mVersionCode:I

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzyv:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbfI:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbfA:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbfJ:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p7, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzJN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/moments/zzb;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;

    if-eqz v0, :cond_1

    if-eq p0, p1, :cond_2

    check-cast p1, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbeM:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    :cond_1
    return v3

    :cond_2
    return v4

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v2

    if-nez v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzFn()Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbeM:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move v1, v0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzrs()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/moments/zzb;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/model/moments/zzb;->zza(Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzFl()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbeM:Ljava/util/HashMap;

    return-object v0
.end method

.method public zzFn()Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;
    .locals 0

    return-object p0
.end method

.method protected zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbeN:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzrs()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzrs()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown safe parcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzrs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzyv:Ljava/lang/String;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbfI:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbfA:Ljava/lang/String;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzbfJ:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzJN:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public synthetic zzrl()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/model/moments/MomentEntity;->zzFl()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
