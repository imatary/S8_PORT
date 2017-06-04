.class final Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;
.super Ljava/util/HashMap;
.source "CategoryTagType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/filterview/CategoryTagType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->PEOPLE:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a031f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->SCENERY:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a038d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->DOCUMENTS:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a012d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->FOOD:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a01be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->PETS:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a0327

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->VEHICLES:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a04b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->FLOWERS:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a01bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->IMAGE:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a04e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->VIDEO:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a04c7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->SEF_FILE_TYPE_BESTPHOTO:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a0063

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->SEF_FILE_TYPE_BESTFACE:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a0062

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->SEF_FILE_TYPE_ERASER:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a016b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->SEF_FILE_TYPE_DRAMASHOT:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a0142

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->SEF_FILE_TYPE_SEQUENCE:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a03b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->SEF_FILE_TYPE_VIRTUALSHOT:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a04d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->SEF_FILE_TYPE_PANORAMA:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a031c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->SEF_FILE_TYPE_SOUNDSHOT:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a0403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->SEF_FILE_TYPE_SURROUNDSHOT:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a043a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->SEF_FILE_TYPE_ANIMATEDGIF:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a004c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->RECORD_MODE_CLIPSTUDIO:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a009b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->RECORD_MODE_FAST:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a01a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->RECORD_MODE_SLOW:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a03f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->RECORD_MODE_HYPER:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    const v1, 0x7f0a01fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
