.class public Lcom/android/bluetooth/map/BluetoothMapFolderElement;
.super Ljava/lang/Object;
.source "BluetoothMapFolderElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapFolderElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothMapFolderElement"

.field private static final V:Z


# instance fields
.field private mEmailServerId:Ljava/lang/String;

.field private mFolderId:J

.field private mFolderType:I

.field private mHasEmailContent:Z

.field private mHasImContent:Z

.field private mHasSmsMmsContent:Z

.field private mIgnore:Z

.field private mName:Ljava/lang/String;

.field private mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mSubFolders:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapFolderElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->V:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mFolderType:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mFolderId:J

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mEmailServerId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasImContent:Z

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasEmailContent:Z

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mIgnore:Z

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private static findFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-nez v2, :cond_0

    return-object p2

    :cond_0
    iget-object v2, p2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v2, v3

    invoke-static {p0, p1, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->findFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method public static getFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->findFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addEmailFolder(Ljava/lang/String;JI)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 10

    :try_start_0
    const-string/jumbo v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    if-eqz p4, :cond_1

    const/4 v5, 0x1

    if-le p4, v5, :cond_0

    const/16 v5, 0x8

    if-lt p4, v5, :cond_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "BluetoothMapFolderElement"

    const-string/jumbo v6, "IndexOutOfBoundsException: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    return-object v5

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v5

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    const-string/jumbo v6, "telecom"

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    const-string/jumbo v6, "msg"

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderType()J

    move-result-wide v6

    int-to-long v8, p4

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "BluetoothMapFolderElement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "folderId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderType()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setFolderId(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    move-exception v0

    const-string/jumbo v5, "BluetoothMapFolderElement"

    const-string/jumbo v6, "Exception: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    return-object v5

    :cond_4
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->V:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "BluetoothMapFolderElement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addEmailFolder(): name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v2, :cond_6

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-direct {v2, p1, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setFolderId(J)V

    invoke-virtual {v2, p4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setFolderType(I)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    return-object v2
.end method

.method public addEmailServer(Ljava/lang/String;JLjava/lang/String;I)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 10

    :try_start_0
    const-string/jumbo v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    if-eqz p5, :cond_1

    const/4 v5, 0x1

    if-le p5, v5, :cond_0

    const/16 v5, 0x8

    if-lt p5, v5, :cond_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "BluetoothMapFolderElement"

    const-string/jumbo v6, "IndexOutOfBoundsException: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    return-object v5

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v5

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    const-string/jumbo v6, "telecom"

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    const-string/jumbo v6, "msg"

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderType()J

    move-result-wide v6

    int-to-long v8, p5

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "BluetoothMapFolderElement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "emailServerId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailServerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderType()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setFolderId(J)V

    invoke-virtual {v3, p4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setEmailServerId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    move-exception v0

    const-string/jumbo v5, "BluetoothMapFolderElement"

    const-string/jumbo v6, "Exception: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    return-object v5

    :cond_4
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->V:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "BluetoothMapFolderElement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addEmailServer(): name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", emailServerId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v2, :cond_6

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-direct {v2, p1, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v2, p4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setEmailServerId(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setFolderType(I)V

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setFolderId(J)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    return-object v2
.end method

.method public addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    if-nez v0, :cond_2

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapFolderElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addFolder():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-direct {v0, p1, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapFolderElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addFolder():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapFolderElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addImFolder() id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setFolderId(J)V

    return-object v0
.end method

.method public addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 3

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapFolderElement"

    const-string/jumbo v2, "addSmsMmsFolder()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    return-object v0
.end method

.method public appendSubfolders(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string/jumbo v3, "UTF-8"

    invoke-interface {v1, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "folder-listing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BluetoothMapFolderElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown XML tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->readFolders(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v3

    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)I
    .locals 8

    const/4 v7, 0x1

    if-nez p1, :cond_0

    return v7

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    sub-int v0, v4, v5

    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-object v4, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    if-nez v3, :cond_3

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BluetoothMapFolderElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not in another"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v7

    :cond_3
    invoke-virtual {v1, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "BluetoothMapFolderElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " filed compareTo()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0

    :cond_5
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "BluetoothMapFolderElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSubFolders.size(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " another.mSubFolders.size(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return v0

    :cond_7
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "BluetoothMapFolderElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " another.mName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)I

    move-result v0

    return v0
.end method

.method public encode(II)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v10

    if-le p1, v10, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "FolderListingEncode: offset > subFolders.size()"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    add-int v6, p1, p2

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v10

    if-le v6, v10, :cond_1

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    :cond_1
    :try_start_0
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->mIsXMLParsingFailCarkits:Z

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v10, "\n"

    invoke-interface {v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, ""

    const-string/jumbo v11, "folder-listing"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, ""

    const-string/jumbo v11, "version"

    const-string/jumbo v12, "1.0"

    invoke-interface {v8, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v4, p1

    :goto_0
    if-ge v4, v6, :cond_2

    const-string/jumbo v10, ""

    const-string/jumbo v11, "folder"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, ""

    const-string/jumbo v11, "name"

    aget-object v12, v3, v4

    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, ""

    const-string/jumbo v11, "folder"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v10, ""

    const-string/jumbo v11, "folder-listing"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    return-object v10

    :cond_3
    :try_start_1
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string/jumbo v10, "UTF-8"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v10, "folder-listing"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "version"

    const-string/jumbo v11, "1.0"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v4, p1

    :goto_2
    if-ge v4, v6, :cond_4

    const-string/jumbo v10, "folder"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "name"

    aget-object v11, v3, v4

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v9, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "folder"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v10, "folder-listing"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v8, v9

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v10, :cond_5

    const-string/jumbo v10, "BluetoothMapFolderElement"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "error encoding folderElement"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :catch_1
    move-exception v2

    :goto_4
    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v10, :cond_6

    const-string/jumbo v10, "BluetoothMapFolderElement"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "error encoding folderElement"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :catch_2
    move-exception v1

    :goto_5
    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v10, :cond_7

    const-string/jumbo v10, "BluetoothMapFolderElement"

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "error encoding folderElement"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :catch_3
    move-exception v1

    move-object v8, v9

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v8, v9

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v8, v9

    goto :goto_3
.end method

.method public getEmailServerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mEmailServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 1

    invoke-static {p1, p2, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    return-object v0
.end method

.method public getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 6

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFolderId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mFolderId:J

    return-wide v0
.end method

.method public getFolderType()J
    .locals 2

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mFolderType:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-object v0
.end method

.method public getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->UnitoStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-object v1
.end method

.method public getSubFolderCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public hasEmailContent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasEmailContent:Z

    return v0
.end method

.method public hasImContent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasImContent:Z

    return v0
.end method

.method public hasSmsMmsContent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    return v0
.end method

.method public readFolders(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BluetoothMapFolderElement"

    const-string/jumbo v6, "readFolders(): "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BluetoothMapFolderElement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown XML tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasEmailContent:Z

    invoke-virtual {v1, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasImContent:Z

    invoke-virtual {v1, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    invoke-virtual {v1, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->D:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "BluetoothMapFolderElement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown XML attribute: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public setEmailServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mEmailServerId:Ljava/lang/String;

    return-void
.end method

.method public setFolderId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mFolderId:J

    return-void
.end method

.method public setFolderType(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mFolderType:I

    return-void
.end method

.method public setHasEmailContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasEmailContent:Z

    return-void
.end method

.method public setHasImContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasImContent:Z

    return-void
.end method

.method public setHasSmsMmsContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    return-void
.end method

.method public setIngore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mIgnore:Z

    return-void
.end method

.method public shouldIgnore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mIgnore:Z

    return v0
.end method
