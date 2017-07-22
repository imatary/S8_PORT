.class Lcom/android/services/telephony/sip/SipProfileDb;
.super Ljava/lang/Object;
.source "SipProfileDb.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProfilesCount:I

.field private mProfilesDirectory:Ljava/lang/String;

.field private mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {p1}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipProfileDb;->setupDatabase()V

    return-void
.end method

.method private deleteProfile(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-direct {p0, v0}, Lcom/android/services/telephony/sip/SipProfileDb;->deleteProfile(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private deserialize(Ljava/io/File;)Landroid/net/sip/SipProfile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    return-object v4

    :catch_0
    move-exception v1

    :goto_0
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deserialize, exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/services/telephony/sip/SipProfileDb;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_1
    return-object v7

    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    throw v5

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_0
.end method

.method private isChild(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "SIP"

    const-string/jumbo v1, "isChild, file is not a child of the base dir."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "31530456"

    aput-object v1, v0, v3

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v3

    :cond_2
    return v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SipProfileDb] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private retrieveSipProfileListInternal()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v4

    :cond_0
    const/4 v5, 0x0

    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, v1, v5

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileFromName(Ljava/lang/String;)Landroid/net/sip/SipProfile;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    return-object v4
.end method

.method private setupDatabase()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/profiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    new-instance v0, Lcom/android/services/telephony/sip/SipPreferences;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/services/telephony/sip/SipPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    return-void
.end method


# virtual methods
.method public accessDEStorageForMigration()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipProfileDb;->setupDatabase()V

    return-void
.end method

.method public cleanupUponMigration()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipPreferences;->clearSharedPreferences()V

    return-void
.end method

.method public deleteProfile(Landroid/net/sip/SipProfile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v2, Lcom/android/services/telephony/sip/SipProfileDb;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/services/telephony/sip/SipProfileDb;->isChild(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid Profile Credentials!"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/services/telephony/sip/SipProfileDb;->deleteProfile(Ljava/io/File;)V

    iget v1, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    if-gez v1, :cond_1

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v2

    return-void
.end method

.method public retrieveSipProfileFromName(Ljava/lang/String;)Landroid/net/sip/SipProfile;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v6

    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, ".pobj"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/services/telephony/sip/SipProfileDb;->deserialize(Ljava/io/File;)Landroid/net/sip/SipProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retrieveSipProfileListInternal, exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/sip/SipProfileDb;->log(Ljava/lang/String;)V

    :cond_1
    return-object v6
.end method

.method public retrieveSipProfileList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/services/telephony/sip/SipProfileDb;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public saveProfile(Landroid/net/sip/SipProfile;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v7, Lcom/android/services/telephony/sip/SipProfileDb;

    monitor-enter v7

    :try_start_0
    iget v6, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesCount:I

    if-gez v6, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/android/services/telephony/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6, v2}, Lcom/android/services/telephony/sip/SipProfileDb;->isChild(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid Profile Credentials!"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string/jumbo v8, ".pobj"

    invoke-direct {v6, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_3

    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    monitor-exit v7

    return-void

    :catch_0
    move-exception v1

    :goto_0
    :try_start_5
    invoke-virtual {v0, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v6

    :goto_1
    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    :cond_4
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v6

    move-object v4, v5

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v5

    goto :goto_0
.end method
