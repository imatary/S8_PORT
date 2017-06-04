.class public Lcom/sec/android/app/ve/pm/ProjectManager;
.super Ljava/lang/Object;
.source "ProjectManager.java"


# static fields
.field private static final CREATE_TIME_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static _instance:Lcom/sec/android/app/ve/pm/ProjectManager;

.field static cloneTE:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

.field public static mTempMMSImage:Ljava/lang/String;

.field private static final sSerializedClasses:[Ljava/lang/String;


# instance fields
.field private mDeleteProjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingClipartsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProjectList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mTextClipartsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/android/app/ve/pm/ProjectManager;

    invoke-direct {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/pm/ProjectManager;->_instance:Lcom/sec/android/app/ve/pm/ProjectManager;

    sput-object v1, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    sput-object v1, Lcom/sec/android/app/ve/pm/ProjectManager;->mTempMMSImage:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/ve/pm/ProjectManager$1;

    invoke-direct {v0}, Lcom/sec/android/app/ve/pm/ProjectManager$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/pm/ProjectManager;->CREATE_TIME_ORDER:Ljava/util/Comparator;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/samsung/app/video/editor/vesdk/BitmapAnimationDataWrapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper$FontParams;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/samsung/app/video/editor/vesdk/EditWrapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/samsung/app/video/editor/vesdk/TextAnimationDataWrap;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/samsung/app/video/editor/external/Region;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/ve/pm/ProjectManager;->sSerializedClasses:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/app/video/editor/vesdk/VEVector;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/vesdk/VEVector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mDeleteProjectList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mTextClipartsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mDrawingClipartsMap:Ljava/util/HashMap;

    return-void
.end method

.method private addProject(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getFilesDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".vep"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjCreationTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setProjCreationTime(J)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setProjectName(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setProjectFileName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/Vector;

    sget-object v2, Lcom/sec/android/app/ve/pm/ProjectManager;->CREATE_TIME_ORDER:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public static clearTempMMSFileName()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/pm/ProjectManager;->mTempMMSImage:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/ve/pm/ProjectManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/pm/ProjectManager;->_instance:Lcom/sec/android/app/ve/pm/ProjectManager;

    return-object v0
.end method

.method private setProjectDetails(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;)V
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getFilesDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".vep"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjCreationTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setProjCreationTime(J)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setProjectName(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setProjectFileName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getProjectFileList()[Ljava/io/File;
    .locals 4

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getFilesDirectory()Ljava/io/File;

    move-result-object v0

    :try_start_0
    new-instance v3, Lcom/sec/android/app/ve/pm/ProjectManager$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/pm/ProjectManager$2;-><init>(Lcom/sec/android/app/ve/pm/ProjectManager;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProjectFileNameAvailableNext(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%03d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->readProjectName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->readProjectName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_3

    :cond_1
    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {p1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%03d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getProjectList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/Vector;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectFileList()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/Vector;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/Vector;

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/Vector;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/Vector;

    goto :goto_0
.end method

.method public getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/Vector;

    if-nez v3, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjectFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "PM:::::temp  null"

    invoke-static {v3}, Lcom/sec/android/app/ve/common/LogUtils;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public saveProject(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/ve/pm/ProjectManager;->clearTempMMSFileName()V

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjectFileName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjectName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lcom/sec/android/app/ve/pm/ProjectManager;->setProjectDetails(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-direct {v7, p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)V

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjectName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/sec/android/app/ve/pm/ProjectManager;->addProject(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Ljava/lang/String;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    :cond_0
    :goto_0
    const-wide/16 v10, 0x3a98

    invoke-static {v7, v10, v11}, Lcom/sec/android/app/ve/util/CommonUtils;->getBitmapFromUtil(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;J)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setThumbnail(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjectFileName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getFilesDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/VEFile."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".vep"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v9}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    sget-object v9, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    if-eqz v9, :cond_2

    sget-object v9, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->deleteAllClipArts()V

    :cond_2
    new-instance v9, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-direct {v9, v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)V

    sput-object v9, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3
    move-object v4, v5

    :goto_2
    return v9

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjectName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setProjectName(Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-direct {v7, p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;-><init>(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)V

    iget-object v9, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/Vector;

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjectFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v9, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/Vector;

    invoke-virtual {v9, v2, v7}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    :cond_7
    throw v9

    :catchall_1
    move-exception v9

    move-object v4, v5

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v4, v5

    goto :goto_3
.end method
