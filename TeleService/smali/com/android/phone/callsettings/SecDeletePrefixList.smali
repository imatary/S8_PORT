.class public Lcom/android/phone/callsettings/SecDeletePrefixList;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "SecDeletePrefixList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SecDeletePrefixList$1;,
        Lcom/android/phone/callsettings/SecDeletePrefixList$2;,
        Lcom/android/phone/callsettings/SecDeletePrefixList$3;,
        Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;,
        Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final FROM:[Ljava/lang/String;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field AddButton:Landroid/widget/ImageView;

.field final MATCH_EQUAL:I

.field private final QUERY_COMPLETE:I

.field final defaultIndex:I

.field private defaultName:Ljava/lang/String;

.field editBox:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentURI:Landroid/net/Uri;

.field private mDeletePrefixAdapter:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

.field private mFirstVisibleItem:I

.field mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mIsOutgoing:Z

.field private mListView:Landroid/widget/ListView;

.field mToast:Landroid/widget/Toast;

.field private mUpdateScreen:Z

.field private mdeletePrefixList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;",
            ">;"
        }
    .end annotation
.end field

.field private previous_NUM:Ljava/lang/String;

.field private previous_match_MODE:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/SecDeletePrefixList;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/SecDeletePrefixList;)Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mDeletePrefixAdapter:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/SecDeletePrefixList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mIsForeground:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/callsettings/SecDeletePrefixList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/SecDeletePrefixList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecDeletePrefixList;->deletePrefixNumber(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/SecDeletePrefixList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecDeletePrefixList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/SecDeletePrefixList;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/SecDeletePrefixList;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/SecDeletePrefixList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecDeletePrefixList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/callsettings/SecDeletePrefixList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->makeScreen()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "deleteprefix_number"

    aput-object v1, v0, v3

    const-string/jumbo v1, "edit_checked"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/callsettings/SecDeletePrefixList;->FROM:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/SecDeletePrefixList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/callsettings/SecDeletePrefixList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/callsettings/SecDeletePrefixList;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->defaultName:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mFirstVisibleItem:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mIsOutgoing:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mUpdateScreen:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mIsForeground:Z

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->DELETE_PREFIX_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mContentURI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mdeletePrefixList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->MATCH_EQUAL:I

    iput v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->defaultIndex:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->QUERY_COMPLETE:I

    new-instance v0, Lcom/android/phone/callsettings/SecDeletePrefixList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SecDeletePrefixList$1;-><init>(Lcom/android/phone/callsettings/SecDeletePrefixList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/SecDeletePrefixList$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SecDeletePrefixList$2;-><init>(Lcom/android/phone/callsettings/SecDeletePrefixList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/SecDeletePrefixList$3;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/SecDeletePrefixList$3;-><init>(Lcom/android/phone/callsettings/SecDeletePrefixList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private addDeletePrefixNumber(Ljava/lang/String;)J
    .locals 8

    const/4 v7, 0x1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "deleteprefix_number"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "edit_checked"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mContentURI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_0
    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getDeletePrefixNumber()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v5, "SecDeletePrefixList"

    const-string/jumbo v6, "checkAlreadyInUse : cursor is null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    move-object v4, p1

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->previous_NUM:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->previous_match_MODE:I

    if-nez v5, :cond_4

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v0, 0x0

    return v3

    :cond_4
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "SecDeletePrefixList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkAlreadyInUse : MATCH_EQUAL, deleteprefixNumber : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v5, "SecDeletePrefixList"

    const-string/jumbo v6, "NumberFormatException"

    invoke-static {v5, v6, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    throw v5
.end method

.method private deletePrefixNumber(I)V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mContentURI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SecDeletePrefixList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuntimeException is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private getDeletePrefixNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v5, "_id desc"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/SecDeletePrefixList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f100051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SecDeletePrefixList"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "SecDeletePrefixList"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeScreen()V
    .locals 13

    const-string/jumbo v10, "makeScreen"

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/callsettings/SecDeletePrefixList;->log(Ljava/lang/String;Z)V

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    iget-object v10, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mdeletePrefixList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mUpdateScreen:Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getDeletePrefixNumber()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v10, 0x2

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_4

    const/4 v5, 0x1

    :goto_0
    const/4 v10, 0x2

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    const/4 v10, 0x1

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "SecDeletePrefixList"

    const-string/jumbo v11, "Edited"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string/jumbo v10, "SecDeletePrefixList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DeletePrefix idx"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " prefix number "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "isChanged "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mdeletePrefixList:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v7, v12, v0}, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v10, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mDeletePrefixAdapter:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

    if-nez v10, :cond_3

    new-instance v10, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mdeletePrefixList:Ljava/util/ArrayList;

    invoke-direct {v10, p0, v11, v12}, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;-><init>(Lcom/android/phone/callsettings/SecDeletePrefixList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v10, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mDeletePrefixAdapter:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

    :cond_3
    iget-object v10, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mDeletePrefixAdapter:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->updateTitleBar()V

    return-void

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    const-wide/16 v10, 0x1

    sub-long v8, v2, v10

    sget-object v10, Lcom/android/phone/callsettings/DeletePrefixDB;->defaultDeletePrefixNumberListCMCC:[Ljava/lang/String;

    long-to-int v11, v8

    aget-object v7, v10, v11

    const-string/jumbo v10, "SecDeletePrefixList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Not Edited, Use Default valueIP number = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateTitleBar()V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mdeletePrefixList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mdeletePrefixList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d0a65

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public clickSaveBtn()V
    .locals 4

    const/4 v2, 0x1

    const-string/jumbo v0, "SecDeletePrefixList"

    const-string/jumbo v1, "clickSaveBtn"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0628

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->addDeletePrefixNumber(Ljava/lang/String;)J

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->makeScreen()V

    return-void
.end method

.method public isAvailableAddbutton()V
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getDeletePrefixNumber()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "SecDeletePrefixList"

    const-string/jumbo v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v1, "SecDeletePrefixList"

    const-string/jumbo v2, "onCreate "

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mToast:Landroid/widget/Toast;

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->DELETE_PREFIX_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mContentURI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mContentURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/SecDeletePrefixList;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v1, 0x7f0400db

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->imm:Landroid/view/inputmethod/InputMethodManager;

    const v1, 0x7f100061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SecDeletePrefixList"

    const-string/jumbo v2, "onCreateView() - editBox is null !!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    new-instance v2, Lcom/android/phone/callsettings/SecDeletePrefixList$4;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecDeletePrefixList$4;-><init>(Lcom/android/phone/callsettings/SecDeletePrefixList;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/SecDeletePrefixList$5;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecDeletePrefixList$5;-><init>(Lcom/android/phone/callsettings/SecDeletePrefixList;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v1, 0x7f10006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->AddButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/phone/callsettings/SecDeletePrefixList$6;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecDeletePrefixList$6;-><init>(Lcom/android/phone/callsettings/SecDeletePrefixList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->isAvailableAddbutton()V

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->initLayout(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->makeScreen()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "SecDeletePrefixList"

    const-string/jumbo v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iput-boolean v3, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mIsForeground:Z

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "SecDeletePrefixList"

    const-string/jumbo v1, "onResume "

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v2, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mIsForeground:Z

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/SecDeletePrefixList$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SecDeletePrefixList$7;-><init>(Lcom/android/phone/callsettings/SecDeletePrefixList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mUpdateScreen:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->makeScreen()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->mFirstVisibleItem:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->updateTitleBar()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "SecDeletePrefixList"

    const-string/jumbo v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList;->editBox:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->isAvailableAddbutton()V

    return-void
.end method
