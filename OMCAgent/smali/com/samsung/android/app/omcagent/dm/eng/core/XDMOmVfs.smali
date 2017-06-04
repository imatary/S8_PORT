.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;
.super Ljava/lang/Object;
.source "XDMOmVfs.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface;


# static fields
.field private static final OM_MAX_LEN:I = 0x200

.field private static index:I


# instance fields
.field public root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

.field public stdobj_space:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    const v0, 0xa000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->stdobj_space:[B

    return-void
.end method

.method public static xdmOmVfsAppendList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move-object p0, p1

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    :goto_0
    return-object p0

    :cond_0
    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    if-nez v1, :cond_1

    iput-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    iput-object p1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    goto :goto_1
.end method

.method public static xdmOmVfsAppendNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)I
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsHaveThisChild(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, -0x2

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    iput-object p0, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->ptParentNode:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :goto_1
    iget-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    if-nez v2, :cond_2

    iput-object p1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    iput-object p0, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->ptParentNode:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_1
.end method

.method public static xdmOmVfsCreateNewNode(Ljava/lang/String;Z)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;-><init>()V

    const-string v3, "*"

    iput-object v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    const/16 v3, 0x1b

    iput v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;->ac:I

    new-instance v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    iput-object v1, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->acl:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    :cond_0
    iput-object p0, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    const/4 v3, 0x6

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->format:I

    iput v4, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->verno:I

    iput v4, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->size:I

    const/4 v3, -0x1

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    const/4 v3, 0x2

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->scope:I

    return-object v2
.end method

.method public static xdmOmVfsCreatePath(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;)I
    .locals 11

    const/4 v8, 0x0

    const-string v6, ""

    move-object v7, p1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    aget-object v9, v3, v8

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    :goto_1
    if-lt v0, v2, :cond_1

    :goto_2
    return v8

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    aget-object v6, v3, v0

    add-int/lit8 v9, v0, 0x1

    if-ne v9, v2, :cond_3

    invoke-static {p0, v6, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsGetNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v8, -0x2

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    invoke-static {v6, v9}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsCreateNewNode(Ljava/lang/String;Z)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsAppendNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)I

    goto :goto_2

    :cond_3
    invoke-static {p0, v6, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsGetNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v8, -0x3

    goto :goto_2

    :cond_4
    move-object v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static xdmOmVfsDeleteAclList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;)V
    .locals 2

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    const/4 v0, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static xdmOmVfsDeleteMimeList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;)V
    .locals 3

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    const/4 v0, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static xdmOmVfsDeleteOmFile(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/db/XDB;->xdbGetFileIdObjectTreeInfo()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/omcagent/dm/db/XDBFileAdapter;->xdbFileDelete(Landroid/content/Context;I)I

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/db/XDB;->xdbGetFileIdObjectData()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/omcagent/dm/db/XDBFileAdapter;->xdbFileDelete(Landroid/content/Context;I)I

    return-void
.end method

.method public static xdmOmVfsDeleteStdobj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsDeleteStdobj()V

    return-void
.end method

.method public static xdmOmVfsDeleteVfs(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->acl:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->acl:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsDeleteAclList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->type:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->type:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsDeleteMimeList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;)V

    :cond_1
    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->title:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szTstamp:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szDdfName:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    const/4 p0, 0x0

    return-void

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsDeleteVfs(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static xdmOmVfsEnd(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsDeleteVfs(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)V

    return-void
.end method

.method public static xdmOmVfsFindVaddr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;)V
    .locals 5

    iget-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :goto_0
    if-nez v0, :cond_1

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    if-ltz v1, :cond_0

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->size:I

    if-lez v1, :cond_0

    iget-object v1, p2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->start:[I

    iget v2, p2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->i:I

    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    aput v3, v1, v2

    iget-object v1, p2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->end:[I

    iget v2, p2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->i:I

    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->size:I

    add-int/2addr v3, v4

    aput v3, v1, v2

    iget v1, p2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->i:I

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, v0, p2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsFindVaddr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;)V

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_0
.end method

.method public static xdmOmVfsGetData(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;[C)I
    .locals 4

    const/4 v1, -0x4

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->size:I

    if-lez v2, :cond_0

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    if-ltz v2, :cond_0

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->size:I

    invoke-static {p0, v2, p2, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsLoadFsData(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;I[CI)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static xdmOmVfsGetFreeVaddr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;I)I
    .locals 12

    const/4 v11, 0x0

    const/4 v3, 0x0

    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    invoke-static {p0, v8, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsFindVaddr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;)V

    iget v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->i:I

    if-nez v8, :cond_0

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v5, v4

    :goto_0
    return v5

    :cond_0
    iget v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->i:I

    add-int/lit8 v1, v8, -0x1

    :goto_1
    const/4 v8, 0x1

    if-ge v1, v8, :cond_1

    iget-object v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->start:[I

    aget v8, v8, v11

    if-lez v8, :cond_4

    iget-object v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->start:[I

    aget v8, v8, v11

    add-int/lit8 v8, v8, 0x1

    if-lt v8, p1, :cond_4

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v5, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v8, v1, -0x1

    if-le v2, v8, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget-object v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->start:[I

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    iget-object v9, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->start:[I

    aget v9, v9, v2

    if-ge v8, v9, :cond_3

    iget-object v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->start:[I

    add-int/lit8 v9, v2, 0x1

    aget v7, v8, v9

    iget-object v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->end:[I

    add-int/lit8 v9, v2, 0x1

    aget v0, v8, v9

    iget-object v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->start:[I

    add-int/lit8 v9, v2, 0x1

    iget-object v10, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->start:[I

    aget v10, v10, v2

    aput v10, v8, v9

    iget-object v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->end:[I

    add-int/lit8 v9, v2, 0x1

    iget-object v10, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->end:[I

    aget v10, v10, v2

    aput v10, v8, v9

    iget-object v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->start:[I

    aput v7, v8, v2

    iget-object v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->end:[I

    aput v0, v8, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iget v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->i:I

    add-int/lit8 v8, v8, -0x1

    if-lt v1, v8, :cond_5

    const-wide/32 v8, 0xa000

    iget-object v10, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->end:[I

    iget v11, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->i:I

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    int-to-long v10, p1

    cmp-long v8, v8, v10

    if-ltz v8, :cond_7

    iget-object v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->end:[I

    iget v9, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->i:I

    add-int/lit8 v9, v9, -0x1

    aget v4, v8, v9

    const/4 v3, 0x0

    move v5, v4

    goto :goto_0

    :cond_5
    iget-object v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->start:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    iget-object v9, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->end:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    add-int/lit8 v6, v8, -0x1

    if-lt v6, p1, :cond_6

    iget-object v8, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->end:[I

    aget v4, v8, v1

    const/4 v3, 0x0

    move v5, v4

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, -0x5

    const/4 v3, 0x0

    move v5, v4

    goto/16 :goto_0
.end method

.method public static xdmOmVfsGetNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v1

    :cond_1
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :cond_5
    if-nez v0, :cond_3

    goto :goto_0
.end method

.method public static xdmOmVfsGetParent(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;
    .locals 3

    move-object v1, p1

    iget-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    if-eq v0, p2, :cond_0

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_0

    :cond_2
    invoke-static {p0, v0, p2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsGetParent(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_1
.end method

.method public static xdmOmVfsHaveThisChild(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_1
    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_0
.end method

.method public static xdmOmVfsInit(Landroid/content/Context;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    if-nez v1, :cond_0

    const-string v1, "/"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsCreateNewNode(Ljava/lang/String;Z)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsLoadFs(Landroid/content/Context;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;)I

    move-result v0

    return v0
.end method

.method public static xdmOmVfsLoadFs(Landroid/content/Context;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;)I
    .locals 11

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/db/XDB;->xdbGetFileIdObjectTreeInfo()I

    move-result v8

    invoke-static {p0, v8}, Lcom/samsung/android/app/omcagent/dm/db/XDBFileAdapter;->xdbGetNameFromCallerID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8}, Lcom/samsung/android/app/omcagent/dm/db/XDBFileAdapter;->xdbFileGetSize(Landroid/content/Context;I)I

    move-result v5

    if-gtz v5, :cond_0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    new-array v4, v5, [B

    invoke-static {p0, v8, v10, v5, v4}, Lcom/samsung/android/app/omcagent/dm/db/XDBFileAdapter;->xdbFileRead(Landroid/content/Context;III[B)I

    :try_start_0
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    :goto_1
    sget v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    aget-byte v2, v4, v0

    :cond_1
    const/16 v0, 0x42

    if-eq v2, v0, :cond_3

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_2
    const/4 v4, 0x0

    sput v10, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/db/XDB;->xdbGetFileIdObjectData()I

    move-result v8

    invoke-static {p0, v8}, Lcom/samsung/android/app/omcagent/dm/db/XDBFileAdapter;->xdbFileGetSize(Landroid/content/Context;I)I

    move-result v5

    iget-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->stdobj_space:[B

    invoke-static {p0, v8, v10, v5, v0}, Lcom/samsung/android/app/omcagent/dm/db/XDBFileAdapter;->xdbFileRead(Landroid/content/Context;III[B)I

    move v0, v10

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsUnpackFsNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/io/DataInputStream;ILcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;[BI)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    const/4 v4, 0x0

    sput v10, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    const/4 v0, -0x4

    goto :goto_0

    :catch_1
    move-exception v7

    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    invoke-direct {p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsResetStdobj()V

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsDeleteOmFile(Landroid/content/Context;)V

    move v0, v10

    goto :goto_0

    :catch_2
    move-exception v7

    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v7

    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static xdmOmVfsLoadFsData(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;I[CI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->stdobj_space:[B

    add-int v2, p1, v0

    aget-byte v1, v1, v2

    int-to-char v1, v1

    aput-char v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static xdmOmVfsPackByte(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-object p0
.end method

.method public static xdmOmVfsPackEnd(Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public static xdmOmVfsPackFsNode(Ljava/io/DataOutputStream;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Ljava/io/DataOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackStart(Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackNode(Ljava/io/DataOutputStream;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Ljava/io/DataOutputStream;

    move-result-object p0

    :goto_1
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackEnd(Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackFsNode(Ljava/io/DataOutputStream;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Ljava/io/DataOutputStream;

    move-result-object p0

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_1
.end method

.method public static xdmOmVfsPackInt16(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-object p0
.end method

.method public static xdmOmVfsPackInt32(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-object p0
.end method

.method public static xdmOmVfsPackNode(Ljava/io/DataOutputStream;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Ljava/io/DataOutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->acl:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    :goto_0
    if-nez v1, :cond_1

    invoke-static {p0, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackByte(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->acl:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    :goto_1
    if-nez v1, :cond_2

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->format:I

    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackInt32(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p0

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->size:I

    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackInt32(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->title:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p0

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szTstamp:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p0

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->scope:I

    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackInt32(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->type:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    :goto_2
    if-nez v1, :cond_3

    invoke-static {p0, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackByte(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    if-lez v2, :cond_0

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->type:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    :goto_3
    if-nez v1, :cond_4

    :cond_0
    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->verno:I

    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackInt16(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szDdfName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p0

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackInt32(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;

    iget-object v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p0

    iget v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;->ac:I

    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackByte(Ljava/io/DataOutputStream;I)Ljava/io/DataOutputStream;

    move-result-object p0

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object p0

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    goto :goto_3
.end method

.method public static xdmOmVfsPackStart(Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-object p0
.end method

.method public static xdmOmVfsPackStr(Ljava/io/DataOutputStream;Ljava/lang/String;)Ljava/io/DataOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static xdmOmVfsPath2Node(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;
    .locals 9

    const/4 v7, 0x0

    const-string v5, ""

    move-object v6, p1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "./"

    invoke-virtual {p1, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_0

    :cond_3
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    const/4 v0, 0x1

    :goto_1
    if-lt v0, v1, :cond_4

    move-object v7, v4

    goto :goto_0

    :cond_4
    aget-object v5, v2, v0

    invoke-static {p0, v5, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsGetNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static xdmOmVfsRemoveNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Z)I
    .locals 7

    const/4 v4, -0x4

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v5, 0x1

    invoke-static {p0, v0, v5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsRemoveNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Z)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    if-nez v5, :cond_4

    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-nez v0, :cond_1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    invoke-static {p0, v5, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsGetParent(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v1

    if-nez v1, :cond_5

    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_1

    :cond_5
    iget-object v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    if-ne v4, p1, :cond_9

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    iput-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :cond_6
    :goto_2
    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->acl:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->acl:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsDeleteAclList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;)V

    :cond_7
    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->type:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->type:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsDeleteMimeList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;)V

    :cond_8
    iput-object v6, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    iput-object v6, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->title:Ljava/lang/String;

    iput-object v6, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szTstamp:Ljava/lang/String;

    iput-object v6, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szDdfName:Ljava/lang/String;

    iput-object v6, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    iput-object v6, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->ptParentNode:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    const/4 p1, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_9
    iget-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :goto_3
    iget-object v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    if-ne v4, p1, :cond_a

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    iput-object v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_2

    :cond_a
    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    goto :goto_3
.end method

.method private xdmOmVfsResetStdobj()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->stdobj_space:[B

    const v0, 0xa000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->stdobj_space:[B

    return-void
.end method

.method public static xdmOmVfsSaveFs(Landroid/content/Context;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/db/XDB;->xdbGetFileIdObjectTreeInfo()I

    move-result v3

    invoke-static {p0, v3}, Lcom/samsung/android/app/omcagent/dm/db/XDBFileAdapter;->xdbGetNameFromCallerID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    iget-object v4, v6, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    if-nez v4, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/db/XDB;->xdbGetFileIdObjectData()I

    move-result v3

    const v6, 0xa000

    iget-object v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->stdobj_space:[B

    invoke-static {p0, v3, v6, v7}, Lcom/samsung/android/app/omcagent/dm/db/XDBFileAdapter;->xdbFileWrite(Landroid/content/Context;IILjava/lang/Object;)I

    const/4 v6, 0x0

    return v6

    :cond_0
    :try_start_3
    invoke-static {v0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPackFsNode(Ljava/io/DataOutputStream;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Ljava/io/DataOutputStream;

    move-result-object v0

    iget-object v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method

.method public static xdmOmVfsSaveFsData(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;ILjava/lang/Object;I)I
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p3, :cond_1

    :cond_0
    const/4 v3, 0x0

    return v3

    :cond_1
    array-length v3, v0

    if-le v3, v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->stdobj_space:[B

    add-int v4, p1, v1

    aget-byte v5, v0, v1

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static xdmOmVfsSetData(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Ljava/lang/Object;I)I
    .locals 2

    invoke-static {p0, p3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsGetFreeVaddr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;I)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iput v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    iput p3, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->size:I

    invoke-static {p0, v0, p2, p3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsSaveFsData(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;ILjava/lang/Object;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xdmOmVfsUnpackFsNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/io/DataInputStream;ILcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;[BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v8, 0x42

    const/4 v6, 0x0

    const/16 v7, 0x44

    move v2, p2

    if-nez p1, :cond_2

    move v0, v6

    :goto_0
    return v0

    :cond_0
    if-ne v2, v8, :cond_5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    sget v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;-><init>()V

    invoke-static {p1, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsUnpackNode(Ljava/io/DataInputStream;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Ljava/io/DataInputStream;

    move-result-object p1

    invoke-static {p3, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsAppendNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)I

    sget v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    aget-byte v2, p4, v0

    :cond_1
    :goto_1
    if-ne v2, v7, :cond_3

    :cond_2
    if-ne v2, v7, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    sget v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    sget v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    if-ne v0, p5, :cond_6

    move v0, v7

    goto :goto_0

    :cond_3
    if-ne v2, v8, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsUnpackFsNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/io/DataInputStream;ILcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;[BI)I

    move-result v2

    goto :goto_1

    :cond_4
    if-eq v2, v7, :cond_1

    move v0, v6

    goto :goto_0

    :cond_5
    if-eq v2, v7, :cond_2

    move v0, v6

    goto :goto_0

    :cond_6
    sget v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    aget-byte v0, p4, v0

    goto :goto_0
.end method

.method public static xdmOmVfsUnpackNode(Ljava/io/DataInputStream;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Ljava/io/DataInputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, ""

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    sget v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->format:I

    sget v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsUnpackStrDup(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->size:I

    sget v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsUnpackStrDup(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->title:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsUnpackStrDup(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szTstamp:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->scope:I

    sget v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    sget v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    if-lez v4, :cond_0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->verno:I

    sget v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsUnpackStrDup(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szDdfName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    sget v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsUnpackStr(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sget v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v7, v7, 0x4

    sput v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    new-instance v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;-><init>()V

    iput-object v6, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    iput v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;->ac:I

    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;-><init>()V

    iput-object v1, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    iget-object v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->acl:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    invoke-static {v7, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsAppendList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    move-result-object v7

    iput-object v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->acl:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsUnpackStr(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;-><init>()V

    iput-object v5, v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    iget-object v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->type:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    invoke-static {v7, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsAppendList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    move-result-object v7

    iput-object v7, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->type:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static xdmOmVfsUnpackStr(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sget v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v3, v3, 0x4

    sput v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/16 v3, 0x200

    if-le v0, v3, :cond_1

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "OM_MAX_LEN over"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Ljava/io/DataInputStream;->read([BII)I

    sget v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/2addr v3, v0

    sput v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public static xdmOmVfsUnpackStrDup(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sget v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/lit8 v3, v3, 0x4

    sput v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/16 v3, 0x200

    if-le v0, v3, :cond_1

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "OM_MAX_LEN over"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Ljava/io/DataInputStream;->read([BII)I

    sget v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    add-int/2addr v3, v0

    sput v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public static xdmOmVfsWriteObj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;IILjava/lang/Object;I)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsPath2Node(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    if-nez p3, :cond_3

    invoke-static {p0, p2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsGetFreeVaddr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;I)I

    move-result v0

    if-gez v0, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    iput v0, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    iput p2, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->size:I

    :goto_1
    add-int v1, p3, p5

    if-le v1, p2, :cond_2

    sub-int v4, v1, p2

    sub-int/2addr p5, v4

    :cond_2
    add-int v4, v0, p3

    invoke-static {p0, v4, p4, p5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsSaveFsData(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;ILjava/lang/Object;I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, -0x4

    goto :goto_0

    :cond_3
    iget v0, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    goto :goto_1

    :cond_4
    move v4, p5

    goto :goto_0
.end method


# virtual methods
.method public xdmOmVfsDeleteStdobj()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->stdobj_space:[B

    return-void
.end method
