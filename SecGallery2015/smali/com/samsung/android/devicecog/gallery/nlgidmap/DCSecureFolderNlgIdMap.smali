.class public Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;
.super Ljava/lang/Object;
.source "DCSecureFolderNlgIdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;
    }
.end annotation


# static fields
.field private static final sFailNlgIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNoInstallNlgIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSucceedNlgIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sSucceedNlgIdMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sFailNlgIdMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sNoInstallNlgIdMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sSucceedNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MoveToSecureFolder"

    const v2, 0x7f0a056e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sFailNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "DetailView"

    const v2, 0x7f0a056c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sFailNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "PictureSelectedView"

    const v2, 0x7f0a06cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sFailNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumThumbnailsSelectedView"

    const v2, 0x7f0a0757

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sFailNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumListSelectedView"

    const v2, 0x7f0a0768

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sNoInstallNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "DetailView"

    const v2, 0x7f0a056d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sNoInstallNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "PictureSelectedView"

    const v2, 0x7f0a06d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sNoInstallNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumThumbnailsSelectedView"

    const v2, 0x7f0a0758

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sNoInstallNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumListSelectedView"

    const v2, 0x7f0a0769

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getNlgId(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->SUCCEED:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sSucceedNlgIdMap:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->getNlgId(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;->FAILURE:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap$NlgType;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sFailNlgIdMap:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->getNlgId(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->sNoInstallNlgIdMap:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSecureFolderNlgIdMap;->getNlgId(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    goto :goto_0
.end method

.method private static getNlgId(Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DCSecureFolderNlgIdMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BixbyGallery, getNlgId() requestStateId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
