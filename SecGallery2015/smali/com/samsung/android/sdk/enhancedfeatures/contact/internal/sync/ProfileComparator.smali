.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;
.super Ljava/lang/Object;
.source "ProfileComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareProfile(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;
    .locals 27

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v14, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v11, "vnd.sec.cursor.item/name_card"

    const/16 v12, 0x1f4

    :try_start_0
    const-string/jumbo v5, "email_checking"

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isIndividualItemsEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteProfileDataByMimeType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "email deleted count is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "vnd.android.cursor.item/email_v2"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    const-string/jumbo v5, "organisation_checking"

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isIndividualItemsEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteProfileDataByMimeType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "organization deleted count is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "vnd.android.cursor.item/organization"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    const-string/jumbo v5, "date_checking"

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isIndividualItemsEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteProfileDataByMimeType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event deleted count is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "vnd.android.cursor.item/contact_event"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V

    :cond_2
    :goto_2
    const-string/jumbo v5, "address_checking"

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isIndividualItemsEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteProfileDataByMimeType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "address deleted count is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "vnd.android.cursor.item/postal-address_v2"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    sget-object v5, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "data"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSamsungDevice()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "account_name"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getProfileAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "account_type"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getProfileAccountType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :cond_4
    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    :try_start_2
    const-string/jumbo v5, "mimetype != ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "vnd.sec.cursor.item/samsung_easysignup"

    aput-object v8, v6, v7

    const-string/jumbo v7, "_id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    const-string/jumbo v5, "profile"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "_id ASC"

    move-object v4, v14

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v16, :cond_5

    if-nez v13, :cond_a

    :cond_5
    const-string/jumbo v5, "a cursor is null"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    :goto_5
    return-object v4

    :cond_6
    :try_start_3
    const-string/jumbo v5, "vnd.android.cursor.item/email_v2"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v22

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    :try_start_4
    const-string/jumbo v5, "vnd.android.cursor.item/organization"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v5, "vnd.android.cursor.item/contact_event"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v5, "vnd.android.cursor.item/postal-address_v2"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    :catch_1
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :cond_a
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_b

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "Me profile is deleted"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->clearProfileTable(Landroid/content/Context;)V

    const-string/jumbo v5, ""

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setStatusMessage(Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->initMultiField(ZZZZZZ)V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setStatus(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_5

    :cond_b
    :try_start_6
    new-instance v24, Landroid/database/CursorJoiner;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "_id"

    aput-object v8, v6, v7

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v13, v6}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/database/CursorJoiner$Result;

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v25 .. v25}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Added : id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mimeType= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "mimetype"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "mimetype"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "vnd.sec.cursor.item/name_card"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string/jumbo v6, "Don\'t share mimetype : vnd.sec.cursor.item/name_card"

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v22

    :try_start_7
    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    :goto_7
    invoke-interface/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->getResult()Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    move-result-object v4

    goto/16 :goto_5

    :cond_d
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->onInserted(Landroid/database/Cursor;Landroid/database/Cursor;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v5

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    throw v5

    :pswitch_1
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Deleted : id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_id"

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mimeType= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "mimetype"

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "mimetype"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "vnd.sec.cursor.item/name_card"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string/jumbo v6, "Don\'t share mimetype : vnd.sec.cursor.item/name_card"

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->onDeleted(Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_6

    :pswitch_2
    const-string/jumbo v6, "data_version"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string/jumbo v6, "data_version"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string/jumbo v6, "mimetype"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "vnd.sec.cursor.item/name_card"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string/jumbo v6, "Don\'t share mimetype : vnd.sec.cursor.item/name_card"

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_f
    move/from16 v0, v17

    if-le v0, v15, :cond_c

    const-string/jumbo v6, "BOTH : dataVersion is updated"

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "mimetype"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->onChanged(Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_6

    :cond_10
    const/16 v23, 0x1

    :goto_8
    const/16 v6, 0xf

    move/from16 v0, v23

    if-gt v0, v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->onChanged(Landroid/database/Cursor;Landroid/database/Cursor;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6

    :cond_11
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    :cond_12
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
