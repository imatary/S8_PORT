.class public Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;
.super Ljava/lang/Object;
.source "DCRenamePopupNlgIdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;
    }
.end annotation


# static fields
.field private static final sDuplicateNlgIdMap:Ljava/util/HashMap;
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

.field private static final sEmptyNlgIdMap:Ljava/util/HashMap;
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
    .locals 5

    const v4, 0x7f0a0793

    const v3, 0x7f0a0792

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sSucceedNlgIdMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sEmptyNlgIdMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sDuplicateNlgIdMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sSucceedNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "StoryListView"

    const v2, 0x7f0a0794

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sSucceedNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "StoryDetailView"

    const v2, 0x7f0a084c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sSucceedNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumsListView"

    const v2, 0x7f0a0764

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sEmptyNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "StoryListView"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sEmptyNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "StoryDetailView"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sEmptyNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumsListView"

    const v2, 0x7f0a0763

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sDuplicateNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "StoryListView"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sDuplicateNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "StoryDetailView"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sDuplicateNlgIdMap:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumsListView"

    const v2, 0x7f0a0765

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getNlgId(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;->SUCCEED:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->getNlgIdForSucceed(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;->FAIL_NAME_IS_EMPTY:Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap$NlgType;

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->getNlgIdForEmptyName(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->getNlgIdForDuplicateName(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static getNlgIdForDuplicateName(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sDuplicateNlgIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DCRenamePopupNlgIdMap"

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
    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sDuplicateNlgIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static getNlgIdForEmptyName(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sEmptyNlgIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DCRenamePopupNlgIdMap"

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
    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sEmptyNlgIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static getNlgIdForSucceed(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sSucceedNlgIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DCRenamePopupNlgIdMap"

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
    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCRenamePopupNlgIdMap;->sSucceedNlgIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
