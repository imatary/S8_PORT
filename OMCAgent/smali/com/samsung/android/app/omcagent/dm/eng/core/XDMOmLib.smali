.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;
.super Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;
.source "XDMOmLib.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;-><init>()V

    return-void
.end method

.method public static xdmOmCheckAcl(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;I)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->m_szServerId:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmCheckNodeAcl(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static xdmOmCheckAclCurrentNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;I)Z
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    iget-object v0, v9, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->m_szServerId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_0
    sget-object v9, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "strnodename :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ptr :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    :goto_1
    return v7

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v2, :cond_8

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2f

    if-eq v9, v10, :cond_4

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_8

    :cond_4
    const/4 v2, 0x1

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    iget-object v1, v9, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eq p2, v7, :cond_2

    :cond_6
    const-string v9, "."

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    iget-object v1, v9, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->root:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v1, p2, v6}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmCheckNodeAcl(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    move v7, v8

    goto :goto_1

    :cond_8
    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "strnodename :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ptr :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object v9, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-static {v9, v4, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;->xdmOmVfsGetNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v1

    if-nez v1, :cond_7

    move v7, v8

    goto :goto_1

    :cond_a
    move-object v0, v1

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "strnodename :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ptr :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static xdmOmCheckNodeAcl(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;ILjava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->acl:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    iget v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;->ac:I

    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->ptParentNode:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    invoke-static {v2, p1, p2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmCheckNodeAcl(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;ILjava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_2
    iget v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;->ac:I

    and-int/2addr v3, p1

    if-ne v3, p1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    :cond_4
    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static xdmOmCheckNodePathDepth(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    move-object v2, p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    const/16 v3, 0xf

    if-le v1, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static xdmOmDefaultACL(Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 6

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    invoke-static {v3, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->acl:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    iget-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;

    iput p2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmAcl;->ac:I

    iput p3, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->scope:I

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v5, "Not Exist"

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static xdmOmDelete(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;Z)I
    .locals 4

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-static {v3, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsPath2Node(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x2

    invoke-static {p0, v0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmCheckAcl(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, -0x5

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-static {v3, v0, p2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsRemoveNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Z)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static xdmOmDeleteImplicit(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;Z)I
    .locals 4

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-static {v3, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsPath2Node(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-static {v3, v0, p2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsRemoveNode(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;Z)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static xdmOmEnd(Landroid/content/Context;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-static {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsSaveFs(Landroid/content/Context;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static xdmOmGetChild(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-static {v3, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsPath2Node(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 p3, -0x6

    :cond_0
    :goto_0
    return p3

    :cond_1
    iget-object v0, v2, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    :goto_1
    if-nez v0, :cond_2

    move p3, v1

    goto :goto_0

    :cond_2
    if-ge v1, p3, :cond_0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p3, -0x3

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    aput-object v3, p2, v1

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static xdmOmGetNodeProp(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-static {v0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsPath2Node(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v0

    return-object v0
.end method

.method public static xdmOmInit(Landroid/content/Context;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-static {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsInit(Landroid/content/Context;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public static xdmOmMakeParentPath(Ljava/lang/String;[C)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-gez v0, :cond_1

    :goto_2
    if-gez v2, :cond_3

    aput-char v5, p1, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v2, :cond_4

    aput-char v5, p1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static xdmOmProcessCmdImplicitAdd(Ljava/lang/Object;Ljava/lang/String;II)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v3, "ROOT NODE not found"

    invoke-virtual {v1, v3}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-lez p3, :cond_2

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmCheckNodePathDepth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/16 v1, 0x100

    new-array v7, v1, [C

    invoke-static {p1, v7}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmMakeParentPath(Ljava/lang/String;[C)V

    invoke-static {v7}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {v0, v8, p2, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmProcessCmdImplicitAdd(Ljava/lang/Object;Ljava/lang/String;II)Z

    :cond_3
    const-string v4, ""

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    const/4 v1, 0x2

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmDefaultACL(Ljava/lang/Object;Ljava/lang/String;II)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static xdmOmRead(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-static {v1, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmvfsCheckPath(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmvfsReadObj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;I[CI)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v1, -0x3

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static xdmOmSetServerId(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->m_szServerId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static xdmOmWrite(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-static {v0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsCreatePath(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;)I

    move-result v6

    if-eqz p4, :cond_0

    if-lez p5, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsWriteObj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;IILjava/lang/Object;I)I

    move-result v6

    if-gez v6, :cond_0

    const/4 p5, -0x3

    :cond_0
    return p5
.end method

.method public static xdmOmvfsCheckPath(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsPath2Node(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static xdmOmvfsReadObj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;I[CI)I
    .locals 5

    const/4 v3, -0x4

    invoke-static {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsPath2Node(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->size:I

    if-lez v4, :cond_0

    iget v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    if-ltz v4, :cond_0

    add-int v0, p4, p2

    iget v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->size:I

    if-le v0, v4, :cond_2

    iget v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->size:I

    sub-int v4, v0, v4

    sub-int/2addr p4, v4

    :cond_2
    iget v4, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->vaddr:I

    add-int/2addr v4, p2

    invoke-static {p0, v4, p3, p4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsLoadFsData(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;I[CI)I

    move-result v2

    if-nez v2, :cond_0

    move v3, p4

    goto :goto_0
.end method
