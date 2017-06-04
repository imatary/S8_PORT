.class public Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;
.super Landroid/content/ContentProvider;
.source "SettingsSearchProvider.java"


# instance fields
.field public final COLUMN_INDEX_NON_INDEXABLE_KEYS_KEY_VALUE:I

.field public final COLUMN_INDEX_RAW_CLASS_NAME:I

.field public final COLUMN_INDEX_RAW_ENTRIES:I

.field public final COLUMN_INDEX_RAW_ICON_RESID:I

.field public final COLUMN_INDEX_RAW_INTENT_ACTION:I

.field public final COLUMN_INDEX_RAW_INTENT_TARGET_CLASS:I

.field public final COLUMN_INDEX_RAW_INTENT_TARGET_PACKAGE:I

.field public final COLUMN_INDEX_RAW_KEY:I

.field public final COLUMN_INDEX_RAW_KEYWORDS:I

.field public final COLUMN_INDEX_RAW_RANK:I

.field public final COLUMN_INDEX_RAW_SCREEN_TITLE:I

.field public final COLUMN_INDEX_RAW_SUMMARY_OFF:I

.field public final COLUMN_INDEX_RAW_SUMMARY_ON:I

.field public final COLUMN_INDEX_RAW_TITLE:I

.field public final COLUMN_INDEX_RAW_USER_ID:I

.field public final COLUMN_INDEX_XML_RES_CLASS_NAME:I

.field public final COLUMN_INDEX_XML_RES_ICON_RESID:I

.field public final COLUMN_INDEX_XML_RES_INTENT_ACTION:I

.field public final COLUMN_INDEX_XML_RES_INTENT_TARGET_CLASS:I

.field public final COLUMN_INDEX_XML_RES_INTENT_TARGET_PACKAGE:I

.field public final COLUMN_INDEX_XML_RES_RANK:I

.field public final COLUMN_INDEX_XML_RES_RESID:I

.field public final INDEXABLES_RAW_PATH:Ljava/lang/String;

.field public final INDEXABLES_XML_RES_PATH:Ljava/lang/String;

.field private final MATCH_NON_INDEXABLE_KEYS_CODE:I

.field private final MATCH_RAW_CODE:I

.field private final MATCH_RES_CODE:I

.field public final NON_INDEXABLES_KEYS_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string/jumbo v0, "GameSettingsSearchProvider"

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.game.gametools.search"

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->mAuthority:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_XML_RES_RANK:I

    iput v2, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_XML_RES_RESID:I

    iput v3, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_XML_RES_CLASS_NAME:I

    iput v4, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_XML_RES_ICON_RESID:I

    iput v5, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_XML_RES_INTENT_ACTION:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_XML_RES_INTENT_TARGET_PACKAGE:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_XML_RES_INTENT_TARGET_CLASS:I

    iput v1, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_RANK:I

    iput v2, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_TITLE:I

    iput v3, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_SUMMARY_ON:I

    iput v4, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_SUMMARY_OFF:I

    iput v5, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_ENTRIES:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_KEYWORDS:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_SCREEN_TITLE:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_CLASS_NAME:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_ICON_RESID:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_INTENT_ACTION:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_INTENT_TARGET_PACKAGE:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_INTENT_TARGET_CLASS:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_KEY:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_RAW_USER_ID:I

    iput v1, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->COLUMN_INDEX_NON_INDEXABLE_KEYS_KEY_VALUE:I

    iput v2, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->MATCH_RES_CODE:I

    iput v3, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->MATCH_RAW_CODE:I

    iput v4, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->MATCH_NON_INDEXABLE_KEYS_CODE:I

    const-string/jumbo v0, "settings/indexables_xml_res"

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->INDEXABLES_XML_RES_PATH:Ljava/lang/String;

    const-string/jumbo v0, "settings/indexables_raw"

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->INDEXABLES_RAW_PATH:Ljava/lang/String;

    const-string/jumbo v0, "settings/non_indexables_key"

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->NON_INDEXABLES_KEYS_PATH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v0, "GameSettingsSearchProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attachInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "settings/indexables_xml_res"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "settings/indexables_raw"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "settings/non_indexables_key"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "GameSettingsSearchProvider"

    const-string/jumbo v1, "attachInfo: Provider must be exported"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "GameSettingsSearchProvider"

    const-string/jumbo v1, "attachInfo: Provider must grantUriPermissions"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must grantUriPermissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "android.permission.READ_SEARCH_INDEXABLES"

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "GameSettingsSearchProvider"

    const-string/jumbo v1, "attachInfo: Provider must be protected by READ_SEARCH_INDEXABLES"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must be protected by READ_SEARCH_INDEXABLES"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "GameSettingsSearchProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Insert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    const-string/jumbo v0, "GameSettingsSearchProvider"

    const-string/jumbo v1, "onCreate: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const-string/jumbo v0, "GameSettingsSearchProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "search selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GameSettingsSearchProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->queryXmlResources([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->queryRawData([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->queryNonIndexableKeys([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public queryRawData([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/16 v9, 0xa

    const/4 v8, 0x5

    const/4 v7, 0x1

    const v6, 0x7f0603d1

    const v5, 0x7f060031

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v2, 0xe

    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "GameSettingsSearchProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "search selection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-class v2, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const-string/jumbo v2, "com.samsung.android.game.gametools"

    aput-object v2, v0, v9

    const/16 v2, 0xb

    const-class v3, Lcom/samsung/android/game/gametools/setting/activity/ToolsSearchResultActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/search/SettingsSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const-string/jumbo v2, "com.samsung.android.game.gametools"

    aput-object v2, v0, v9

    const/16 v2, 0xb

    const-class v3, Lcom/samsung/android/game/gametools/setting/activity/LauncherSearchResultActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public queryXmlResources([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x7

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "GameSettingsSearchProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "search selection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
