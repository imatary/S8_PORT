.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;
.super Ljava/lang/Object;
.source "ContactComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$ContactChangeAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareNumber(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$ContactChangeAction;Z)Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$ContactChangeAction;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v17, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "account_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " IS NOT NULL AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " NOT LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.coreapps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_SYNC_SIM_CONTACT:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "account_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " NOT LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-boolean v3, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_NOT_NORMALIZED_NUMBER:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " IS NOT NULL AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mimetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " IS \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    const-string/jumbo v4, "contacts"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "contacts_id ASC"

    move-object/from16 v3, v17

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v18, :cond_1

    if-nez v9, :cond_6

    :cond_1
    const-string/jumbo v3, "a cursor is null"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v18, :cond_2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    const/16 v27, 0x0

    :cond_4
    :goto_1
    return-object v27

    :cond_5
    const-string/jumbo v3, "data4"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " IS NOT NULL AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mimetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " IS \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cCursor count is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aCursor count is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v29, Landroid/database/CursorJoiner;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "contacts_id"

    aput-object v6, v4, v5

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3, v9, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/database/CursorJoiner$Result;

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v31 .. v31}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-boolean v3, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_NOT_NORMALIZED_NUMBER:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Added("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ") : name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "display_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " phonenumber="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "data1"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " normalized phonenumber = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "data4"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$ContactChangeAction;->onInserted(Landroid/database/Cursor;Landroid/database/Cursor;)V

    const-string/jumbo v3, "starred"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-lez v23, :cond_8

    move-object/from16 v3, p1

    check-cast v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->setStarredChanged(Z)V

    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactQueryHelper;->extractContactEntry(Landroid/content/Context;Landroid/database/Cursor;Z)Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    move-result-object v10

    if-eqz v10, :cond_7

    if-nez p2, :cond_9

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->SET:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->setType(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Added : name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "display_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " phonenumber="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "data4"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Deleted("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "contacts_id"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ") : name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "contacts_name"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " phonenumber="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "conatct_number"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$ContactChangeAction;->onDeleted(Landroid/database/Cursor;Landroid/database/Cursor;)V

    const-string/jumbo v3, "contacts_starred"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    if-lez v32, :cond_b

    move-object/from16 v3, p1

    check-cast v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->setStarredChanged(Z)V

    :cond_b
    const/4 v3, 0x1

    invoke-static {v9, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->extractContactEntry(Landroid/database/Cursor;Z)Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    move-result-object v26

    if-eqz v26, :cond_7

    const/16 v28, 0x0

    const-string/jumbo v3, "conatct_number"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    sget-boolean v3, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_NOT_NORMALIZED_NUMBER:Z

    if-eqz v3, :cond_c

    const-string/jumbo v3, "contacts_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->contactExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    :goto_4
    if-eqz v28, :cond_e

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v33

    const/4 v3, 0x4

    move/from16 v0, v33

    if-le v0, v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Same phone number is contact.db : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v33, -0x4

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactQueryHelper;->isContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    goto :goto_4

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Same phone number is contact.db : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->WITHDRAW:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->setType(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2
    const-string/jumbo v3, "starred"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string/jumbo v3, "contacts_starred"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v21, 0x0

    const/4 v13, 0x0

    sget-boolean v3, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_NOT_NORMALIZED_NUMBER:Z

    if-eqz v3, :cond_11

    const-string/jumbo v3, "data1"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v3, "conatct_display_number"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_5
    const-string/jumbo v3, "display_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v3, "contacts_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v22

    if-eq v0, v14, :cond_f

    move-object/from16 v3, p1

    check-cast v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->setStarredChanged(Z)V

    :cond_f
    move-object/from16 v0, v21

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string/jumbo v3, "BOTH : phoneNumber has some changed"

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BOTH : contactPhone = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "  agentPhone = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$ContactChangeAction;->onChanged(Landroid/database/Cursor;Landroid/database/Cursor;)V

    const/4 v3, 0x1

    invoke-static {v9, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->extractContactEntry(Landroid/database/Cursor;Z)Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    move-result-object v15

    if-eqz v15, :cond_10

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->WITHDRAW:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->setType(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    const/4 v3, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactQueryHelper;->extractContactEntry(Landroid/content/Context;Landroid/database/Cursor;Z)Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    move-result-object v11

    if-eqz v11, :cond_7

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->SET:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->setType(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v3, "data4"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v3, "conatct_number"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, v20

    invoke-static {v0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string/jumbo v3, "BOTH : Name has some changed"

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$ContactChangeAction;->onChanged(Landroid/database/Cursor;Landroid/database/Cursor;)V

    const/4 v3, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactQueryHelper;->extractContactEntry(Landroid/content/Context;Landroid/database/Cursor;Z)Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    move-result-object v19

    if-eqz v19, :cond_7

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->SET:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->setType(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_13
    move/from16 v0, v22

    if-eq v0, v14, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "starred has changed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "->"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateContact(Landroid/content/Context;Landroid/database/Cursor;Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_14
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->applyBatch(Ljava/util/ArrayList;)[J

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
