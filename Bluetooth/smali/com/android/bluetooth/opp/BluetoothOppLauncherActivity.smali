.class public Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;
.super Landroid/app/Activity;
.source "BluetoothOppLauncherActivity.java"


# static fields
.field private static final D:Z

.field private static final IS_BT_ENABLE_DIALOG:Ljava/lang/String; = "isBtEnableDialog"

.field private static final PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "BluetoothOppLauncherActivity"

.field private static final V:Z


# instance fields
.field private isBtEnableDialog:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->launchDevicePicker()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    const-string/jumbo v0, "[<>&]| {2,}|\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->isBtEnableDialog:Z

    return-void
.end method

.method private creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/net/Uri;
    .locals 21

    if-nez p2, :cond_0

    const/16 v18, 0x0

    return-object v18

    :cond_0
    const/4 v7, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f0a0087

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".html"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    new-instance v15, Ljava/lang/StringBuffer;

    const-string/jumbo v18, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body>"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v18, "(?i)(http|https)://"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")|("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")|("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    sget-object v18, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_2
    :goto_1
    if-eqz v9, :cond_1

    const-string/jumbo v18, "<a href=\"%s\">%s</a>"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    const/16 v20, 0x1

    aput-object v11, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v15, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string/jumbo v18, "BluetoothOppLauncherActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "FileNotFoundException: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_3

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_3
    :goto_2
    return-object v7

    :cond_4
    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "http://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_5
    sget-object v18, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_6

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mailto:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_6
    sget-object v18, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "tel:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string/jumbo v18, "</body></html>"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v12

    if-eqz v12, :cond_8

    array-length v0, v2

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v12, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    new-instance v18, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_8

    sget-boolean v18, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->D:Z

    if-eqz v18, :cond_8

    const-string/jumbo v18, "BluetoothOppLauncherActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Created one file for shared content: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    if-eqz v12, :cond_3

    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v5

    :try_start_5
    const-string/jumbo v18, "BluetoothOppLauncherActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_3

    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_4
    move-exception v4

    :try_start_7
    const-string/jumbo v18, "BluetoothOppLauncherActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "IOException: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v12, :cond_3

    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catchall_0
    move-exception v18

    if-eqz v12, :cond_9

    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_9
    :goto_3
    throw v18

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private static escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x20

    sget-object v6, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne v0, v9, :cond_4

    const/4 v2, 0x1

    sub-int v4, v1, v7

    :goto_0
    if-ge v2, v4, :cond_1

    const-string/jumbo v8, "&nbsp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    :cond_4
    const/16 v8, 0xd

    if-eq v0, v8, :cond_5

    const/16 v8, 0xa

    if-ne v0, v8, :cond_6

    :cond_5
    const-string/jumbo v8, "<br>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_7

    const-string/jumbo v8, "&lt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_8

    const-string/jumbo v8, "&gt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const/16 v8, 0x26

    if-ne v0, v8, :cond_2

    const-string/jumbo v8, "&amp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private final isBluetoothAllowed()Z
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "airplane_mode_on"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_0

    move v2, v7

    :goto_0
    if-nez v2, :cond_1

    return v7

    :cond_0
    move v2, v6

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "airplane_mode_radios"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v3, v7

    :goto_1
    if-nez v3, :cond_3

    return v7

    :cond_2
    const-string/jumbo v8, "bluetooth"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1

    :cond_3
    const-string/jumbo v8, "airplane_mode_toggleable_radios"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v4, v6

    :goto_2
    if-eqz v4, :cond_5

    return v7

    :cond_4
    const-string/jumbo v8, "bluetooth"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_2

    :cond_5
    return v6
.end method

.method private final launchDevicePicker()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BAOI"

    const-string/jumbo v2, "LAUNCH_PICKER"

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v1, v4, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->insertGSIMLog(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string/jumbo v2, "com.android.bluetooth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothOppLauncherActivity"

    const-string/jumbo v2, "Launching android.bluetooth.devicepicker.action.LAUNCH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v16, "isBtEnableDialog"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->isBtEnableDialog:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    const-string/jumbo v17, "action is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    return-void

    :cond_1
    const-string/jumbo v16, "android.intent.action.SEND"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string/jumbo v16, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->isBtEnableDialog:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    :cond_3
    const-string/jumbo v16, "android.btopp.intent.action.OPEN"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    sget-boolean v16, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->D:Z

    if-eqz v16, :cond_4

    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Get ACTION_OPEN intent: Uri = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v16, "com.android.bluetooth"

    const-class v17, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v16, 0xf0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    new-instance v16, Landroid/os/UserHandle;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v16, "android.intent.action.SEND"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v16, "android.intent.extra.STREAM"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    const-string/jumbo v16, "android.intent.extra.TEXT"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v11, :cond_8

    if-eqz v13, :cond_8

    sget-boolean v16, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->D:Z

    if-eqz v16, :cond_6

    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Get ACTION_SEND intent: Uri = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-boolean v16, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v16, :cond_7

    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Get ACTION_SEND intent: Mimetype = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v12, Ljava/lang/Thread;

    new-instance v16, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v11}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    const-wide/16 v16, 0x15e

    :try_start_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_c

    if-eqz v13, :cond_c

    sget-boolean v16, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->D:Z

    if-eqz v16, :cond_9

    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Get ACTION_SEND intent with Extra_text = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v16, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v16, :cond_a

    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Get ACTION_SEND intent with Mimetype = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_b

    new-instance v12, Ljava/lang/Thread;

    new-instance v16, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v5}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    const-wide/16 v16, 0x15e

    :try_start_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    return-void

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_b
    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    const-string/jumbo v17, "Error trying to do set text...File not created!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    return-void

    :cond_c
    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    const-string/jumbo v17, "type is null; or sending file URI is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    return-void

    :cond_d
    const-string/jumbo v16, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v16, "android.intent.extra.STREAM"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v10, :cond_10

    if-eqz v15, :cond_10

    sget-boolean v16, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->D:Z

    if-eqz v16, :cond_e

    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Get ACTION_SHARE_MULTIPLE intent: Uris = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-boolean v16, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->V:Z

    if-eqz v16, :cond_f

    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Get ACTION_SHARE_MULTIPLE intent: Mimetype = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    new-instance v12, Ljava/lang/Thread;

    new-instance v16, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v15}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    const-wide/16 v16, 0x15e

    :try_start_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    return-void

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_10
    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    const-string/jumbo v17, "type is null; or sending files URIs are null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    return-void

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    :cond_12
    :goto_4
    return-void

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->isBtEnableDialog:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14

    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    const-string/jumbo v17, "BT enabler already shown"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto :goto_4

    :cond_14
    const-string/jumbo v16, "BluetoothOppLauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Unsupported action: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "isBtEnableDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "BluetoothOppLauncherActivity"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
