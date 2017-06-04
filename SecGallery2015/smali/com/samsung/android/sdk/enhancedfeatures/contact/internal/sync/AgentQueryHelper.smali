.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;
.super Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;
.source "AgentQueryHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;-><init>()V

    return-void
.end method

.method public static buildDataOpForDelete(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contact_id = ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "sync_data"

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v3

    return-object v3
.end method

.method private static clearContactsTable(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "contacts"

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static clearLocalDB(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->clearContactsTable(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->clearProfileTable(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->clearSyncRawTable(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->clearSyncDataTable(Landroid/content/Context;)V

    return-void
.end method

.method public static clearProfileTable(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteAllMeProfileImageFromOrsServer(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static clearSyncDataTable(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sync_data"

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static clearSyncRawTable(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sync_raw_contacts"

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static contactExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15

    const/4 v13, 0x0

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "contacts_id"

    aput-object v2, v3, v1

    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "contacts"

    const-string/jumbo v4, "conatct_number = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    const/4 v2, 0x0

    if-eqz v9, :cond_2

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v11, v1, -0x1

    if-lez v11, :cond_2

    new-array v8, v11, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v12, 0x0

    :cond_0
    const-string/jumbo v1, "contacts_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    aput-object v7, v8, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contactExist contacts ID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v8, v12

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactQueryHelper;->isContact(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v13

    :cond_2
    if-eqz v9, :cond_3

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_0
    return v13

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v10

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_1
    if-eqz v9, :cond_5

    if-eqz v2, :cond_6

    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_2
    :try_start_7
    throw v1

    :catch_3
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private static deleteAllMeProfileImageFromOrsServer(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getMyProifleImage(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deleteProfileImageFromOrsServer(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v0, :cond_0

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_3

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    return-void

    :catch_1
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public static deleteContact(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;
    .locals 6

    const/4 v2, 0x0

    if-nez p0, :cond_1

    const-string/jumbo v3, "deleteContact() cursor is null -return"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->extractContactEntry(Landroid/database/Cursor;)Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "contacts"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string/jumbo v2, "contacts_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    goto :goto_0
.end method

.method public static deleteCoreAppsContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v3, "deleteCoreAppsContact() raw id is null - return"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "contacts"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string/jumbo v5, "conatct_number = ?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p2, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "sync_raw_contacts"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string/jumbo v5, "_id = ?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string/jumbo v5, "contact_id = ?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/ImageFileManager;->deleteUserProfile(Landroid/content/Context;Ljava/lang/String;)Z

    :try_start_0
    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->applyBatch(Ljava/util/ArrayList;)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteProfileData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;
    .locals 5

    if-nez p0, :cond_0

    const-string/jumbo v1, "deleteContact() cursor is null -return"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "profile"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string/jumbo v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    goto :goto_0
.end method

.method public static deleteProfileDataByMimeType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "profile"

    const-string/jumbo v2, "mimetype = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static extractContactEntry(Landroid/database/Cursor;)Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->extractContactEntry(Landroid/database/Cursor;Z)Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public static extractContactEntry(Landroid/database/Cursor;Z)Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;
    .locals 7

    const/4 v3, 0x0

    const-string/jumbo v4, "conatct_number"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    :try_start_0
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    const-string/jumbo v4, "contacts_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "contacts_name"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCoreAppsContactRawIdByDUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sync_raw_contacts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "raw_contact_duid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_0
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    :goto_0
    return-object v8

    :catch_0
    move-exception v7

    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getCoreAppsContactRawIdsByMSISDN(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sync_raw_contacts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "raw_contact_number = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v10, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_0

    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rawID[i] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    :goto_1
    return-object v10

    :catch_0
    move-exception v8

    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getImageInfoList(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;
    .locals 17

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "contact_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "data1"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "data3"

    aput-object v2, v3, v1

    new-instance v11, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;

    invoke-direct {v11}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "sync_data"

    const-string/jumbo v4, "mimetype = ? AND data2 is NULL "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    const/4 v2, 0x0

    if-eqz v7, :cond_3

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "data3"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string/jumbo v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v1, "contact_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "imgNo = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "imgUrl = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "rawId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v9, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;

    invoke-direct {v9, v14, v12, v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_1
    if-eqz v7, :cond_1

    if-eqz v2, :cond_5

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v8

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imageMetaInfoArrayList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;->setImageList(Ljava/util/List;)V

    return-object v11

    :cond_3
    if-eqz v7, :cond_2

    if-eqz v2, :cond_4

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_3
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public static getMsisdnByDUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "data1"

    aput-object v0, v2, v1

    const-string/jumbo v0, "data2"

    aput-object v0, v2, v3

    const-string/jumbo v0, "data4"

    aput-object v0, v2, v4

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mimetype = ? AND data4 = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "getMsisdnByDUID() - find"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :goto_0
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    :goto_1
    return-object v8

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getMsisdnByDUID() - can\'t find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getMsisdnByDUID() - can\'t find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getMyProifleImage(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "mimetype"

    aput-object v0, v2, v5

    const-string/jumbo v0, "data12"

    aput-object v0, v2, v6

    const-string/jumbo v0, "data13"

    aput-object v0, v2, v7

    const/4 v0, 0x3

    const-string/jumbo v1, "data14"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "data15"

    aput-object v1, v2, v0

    const-string/jumbo v3, "mimetype = ? OR mimetype = ? "

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    aput-object v0, v4, v5

    const-string/jumbo v0, "vnd.android.cursor.item/photo_deleted"

    aput-object v0, v4, v6

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "profile"

    const-string/jumbo v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getPhonenumbersForSelectedList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "data1"

    aput-object v0, v2, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mimetype"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "=? AND data6=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sync_data"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v10, "1"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    :goto_1
    return-object v8

    :cond_0
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getProfileImageNumber(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "data2"

    aput-object v0, v2, v1

    const-string/jumbo v3, "contact_id = ? AND mimetype = ? AND data2 IS NOT NULL "

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sync_data"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    return v7

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getProfileImageUrl(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "data1"

    aput-object v0, v2, v1

    const-string/jumbo v3, "contact_id = ? AND mimetype = ? AND data3 = ? "

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sync_data"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :cond_0
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    return-object v7

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getSidsByDUID(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v9, -0x1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "data1"

    aput-object v0, v2, v1

    const-string/jumbo v0, "data2"

    aput-object v0, v2, v3

    const-string/jumbo v0, "data4"

    aput-object v0, v2, v4

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sync_data"

    const-string/jumbo v3, "mimetype = ? AND data4 = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "getSidsByDUID() - find"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    :goto_1
    return v9

    :catch_0
    move-exception v7

    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSidsByDUID() - can\'t find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_2
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSidsByDUID() - can\'t find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public static insertContact(Landroid/content/Context;Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v3, "insertContact() cursor is null -return"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactQueryHelper;->extractContactEntry(Landroid/content/Context;Landroid/database/Cursor;)Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "contacts"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string/jumbo v2, "contacts_id"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v2, "conatct_number"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    sget-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_NOT_NORMALIZED_NUMBER:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "conatct_display_number"

    const-string/jumbo v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_2
    const-string/jumbo v2, "contacts_name"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v2, "contacts_version"

    const-string/jumbo v3, "data_version"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v2, "contacts_starred"

    const-string/jumbo v3, "starred"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    goto :goto_0
.end method

.method public static insertOrUpdateProfileImageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 8

    const/4 v3, 0x6

    const-string/jumbo v2, "mimetype"

    const-string/jumbo v4, "data3"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->isDataAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sync_data"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string/jumbo v1, "contact_id"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v0, "mimetype"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v0, "data1"

    invoke-virtual {v6, v0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v0, "data3"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :goto_0
    const-string/jumbo v0, "data2"

    invoke-virtual {v6, v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v0, "data15"

    invoke-virtual {v6, v0, p5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->execute(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;)V

    return-void

    :cond_0
    const-string/jumbo v0, "sync_data"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string/jumbo v1, "contact_id = ? AND mimetype = ? AND data3 = ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    goto :goto_0
.end method

.method public static insertProfileData(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v1, "deleteContact() cursor is null -return"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "profile"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data_version"

    const-string/jumbo v2, "data_version"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "mimetype"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data1"

    const-string/jumbo v2, "data1"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data2"

    const-string/jumbo v2, "data2"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data3"

    const-string/jumbo v2, "data3"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data4"

    const-string/jumbo v2, "data4"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data5"

    const-string/jumbo v2, "data5"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data6"

    const-string/jumbo v2, "data6"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data7"

    const-string/jumbo v2, "data7"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data8"

    const-string/jumbo v2, "data8"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data9"

    const-string/jumbo v2, "data9"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data10"

    const-string/jumbo v2, "data10"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data11"

    const-string/jumbo v2, "data11"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "mimetype"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "data12"

    const-string/jumbo v2, "data12"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data13"

    const-string/jumbo v2, "data13"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data15"

    const-string/jumbo v2, "data15"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :goto_1
    const-string/jumbo v1, "data14"

    const-string/jumbo v2, "data14"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "data12"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data13"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data15"

    const-string/jumbo v2, "data15"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto :goto_1
.end method

.method public static insertProfileImageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 10

    const/4 v3, 0x6

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getProfileImageUrl(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz p3, :cond_0

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v4, "data3"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->isDataAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "sync_data"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string/jumbo v1, "contact_id"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v0, "mimetype"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v0, "data3"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :goto_1
    const-string/jumbo v0, "timestamp"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v0, "data1"

    invoke-virtual {v6, v0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->execute(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "sync_data"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string/jumbo v1, "contact_id = ? AND mimetype = ? AND data3 = ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v0, "data2"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto :goto_1
.end method

.method public static isDataAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "contact_id = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    :goto_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sync_data"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    const/4 v1, 0x0

    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v8, 0x1

    :cond_0
    if-eqz v6, :cond_1

    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return v8

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "contact_id = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object p5, v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    if-eqz v1, :cond_5

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_2
    :try_start_7
    throw v0

    :catch_3
    move-exception v5

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2
.end method

.method public static printCoreAppsContacts(Landroid/content/Context;)V
    .locals 9

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "data1"

    aput-object v0, v2, v1

    const-string/jumbo v0, "data2"

    aput-object v0, v2, v3

    const-string/jumbo v0, "data4"

    aput-object v0, v2, v4

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sync_data"

    const-string/jumbo v3, "mimetype = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string/jumbo v0, "printCoreAppsContacts() - Start print"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    :goto_1
    return-void

    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "printCoreAppsContacts() - no coreApps contact - count is zero"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "printCoreAppsContacts() - End print"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_2
    :try_start_3
    const-string/jumbo v0, "printCoreAppsContacts() - no coreApps contact - cursor is null"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static updateContact(Landroid/content/Context;Landroid/database/Cursor;Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;
    .locals 7

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string/jumbo v4, "deleteContact() cursor is null -return"

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    const-string/jumbo v4, "contacts"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactQueryHelper;->extractContactEntry(Landroid/content/Context;Landroid/database/Cursor;)Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->extractContactEntry(Landroid/database/Cursor;)Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const-string/jumbo v3, "contacts_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v3, "conatct_number"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    sget-boolean v3, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_NOT_NORMALIZED_NUMBER:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "conatct_display_number"

    const-string/jumbo v4, "data1"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_3
    const-string/jumbo v3, "contacts_name"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v3, "contacts_version"

    const-string/jumbo v4, "data_version"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v3, "contacts_starred"

    const-string/jumbo v4, "starred"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private static updateProfileCommonData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;
    .locals 5

    const-string/jumbo v1, "profile"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string/jumbo v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data_version"

    const-string/jumbo v2, "data_version"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data1"

    const-string/jumbo v2, "data1"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data2"

    const-string/jumbo v2, "data2"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data3"

    const-string/jumbo v2, "data3"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data4"

    const-string/jumbo v2, "data4"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data5"

    const-string/jumbo v2, "data5"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data6"

    const-string/jumbo v2, "data6"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data7"

    const-string/jumbo v2, "data7"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data8"

    const-string/jumbo v2, "data8"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data9"

    const-string/jumbo v2, "data9"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data10"

    const-string/jumbo v2, "data10"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data11"

    const-string/jumbo v2, "data11"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data14"

    const-string/jumbo v2, "data14"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    return-object v0
.end method

.method public static updateProfileData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v1, "deleteContact() cursor is null -return"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateProfileCommonData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string/jumbo v1, "mimetype"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "data12"

    const-string/jumbo v2, "data12"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data13"

    const-string/jumbo v2, "data13"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data15"

    const-string/jumbo v2, "data15"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "data15"

    const-string/jumbo v2, "data15"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto :goto_1
.end method

.method public static updateProfileDataWithImageUrl(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v1, "deleteContact() cursor is null -return"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateProfileCommonData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string/jumbo v1, "data12"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data13"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v1, "data15"

    const-string/jumbo v2, "data15"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    goto :goto_0
.end method
