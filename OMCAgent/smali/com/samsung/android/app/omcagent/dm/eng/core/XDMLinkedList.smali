.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;
.super Ljava/lang/Object;
.source "XDMLinkedList.java"


# instance fields
.field public count:I

.field public cur:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

.field public top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmListAddObjAtFirst(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;-><init>()V

    invoke-static {v0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListBindObjectToNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v0, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    return-void
.end method

.method public static xdmListAddObjAtLast(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;-><init>()V

    invoke-static {v0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListBindObjectToNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v2, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v2, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v0, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    :cond_0
    return-void
.end method

.method public static xdmListBindObjectToNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static xdmListClearLinkedList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    :goto_0
    if-ne v0, v1, :cond_0

    iput-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    return-void

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListFreeNodeFromMemory(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static xdmListCreateLinkedList()Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListCreateNodeFromMemory()Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v3, "Create node memory alloc failed"

    invoke-virtual {v2, v3}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iput-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    goto :goto_0
.end method

.method public static xdmListCreateNodeFromMemory()Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;
    .locals 1

    const/4 v0, 0x0

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;-><init>()V

    return-object v0
.end method

.method public static xdmListFreeLinkedList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    :goto_0
    if-ne v0, v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListFreeNodeFromMemory(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    goto :goto_0
.end method

.method public static xdmListFreeNodeFromMemory(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    const/4 p0, 0x0

    :cond_0
    return-object v0
.end method

.method public static xdmListGetNextObj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->cur:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->cur:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static xdmListGetObj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;I)Ljava/lang/Object;
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    move-object v0, v2

    iget v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    if-ge p1, v3, :cond_0

    if-gez p1, :cond_2

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    move v1, p1

    :goto_1
    add-int/lit8 p1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v1, p1

    goto :goto_1
.end method

.method public static xdmListRemoveObjAt(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;I)Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    move-object v0, v3

    iget v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    if-ge p1, v4, :cond_0

    if-gez p1, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    move v1, p1

    :goto_1
    add-int/lit8 p1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v5, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v5, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v5, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v5, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListFreeNodeFromMemory(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;)Ljava/lang/Object;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    goto :goto_0

    :cond_2
    move v1, p1

    goto :goto_1
.end method

.method public static xdmListRemoveObjAtFirst(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListRemoveObjAt(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static xdmListRemovePreviousObj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->cur:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v2, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v2, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListFreeNodeFromMemory(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static xdmListSetCurrentObj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    if-ltz p1, :cond_0

    iget v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    if-ge p1, v2, :cond_0

    move v1, p1

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-gez v1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->cur:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    return-void

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    move v1, p1

    goto :goto_0
.end method


# virtual methods
.method public xdmListRemoveObj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->top:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v0, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    const/4 v1, 0x0

    :goto_0
    if-ne v0, v2, :cond_0

    :goto_1
    return-object v1

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v4, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iget-object v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    iput-object v4, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListFreeNodeFromMemory(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;)Ljava/lang/Object;

    move-result-object v1

    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->count:I

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

    goto :goto_0
.end method
