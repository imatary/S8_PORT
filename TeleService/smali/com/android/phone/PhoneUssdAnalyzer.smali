.class public Lcom/android/phone/PhoneUssdAnalyzer;
.super Ljava/lang/Object;
.source "PhoneUssdAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;
    }
.end annotation


# static fields
.field static sPatternSupportUSSD:Ljava/util/regex/Pattern;


# instance fields
.field private mCurrentRecoveryOperate:Z

.field private mCurrentRecoveryUssd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^(122|145|146|126|149|125|139|351|101|102|43)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUssdAnalyzer;->sPatternSupportUSSD:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneUssdAnalyzer;->mCurrentRecoveryOperate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer;->mCurrentRecoveryUssd:Ljava/lang/String;

    return-void
.end method

.method private checkErrorCode(Ljava/lang/CharSequence;Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 2

    const-string/jumbo v0, "error-code3"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneUssdAnalyzer"

    const-string/jumbo v1, "received error-code3"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d04cb

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private resultRegisterReplyMessage(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "registerreplymsg_service_name"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string/jumbo v0, "registerreplymsg_ussd_code"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    :try_start_0
    const-string/jumbo v0, "content://com.android.phone.callsettings/register_reply_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerreplymsg_ussd_code=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "registerreplymsg_service_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "PhoneUssdAnalyzer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resultRegisterReplyMessage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v8

    :catch_0
    move-exception v6

    const-string/jumbo v0, "PhoneUssdAnalyzer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public final analyzeUssd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 25

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    aput-object v3, v22, v4

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    aput-object v3, v22, v4

    const/4 v3, 0x1

    new-array v14, v3, [Ljava/lang/String;

    const-string/jumbo v3, "122\\*1\\*[74]{1}\\*([0-9]+)#"

    const/4 v4, 0x0

    aput-object v3, v14, v4

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const-string/jumbo v3, "0"

    const/4 v4, 0x0

    aput-object v3, v11, v4

    const-string/jumbo v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v3, 0x9b

    new-array v0, v3, [Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    move-object/from16 v19, v0

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*122#"

    const-string/jumbo v5, "122*7#"

    const v6, 0x7f0d0b96

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v4, 0x0

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*122#"

    const-string/jumbo v5, "122*4#"

    const v6, 0x7f0d0b97

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v4, 0x1

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*122#"

    const-string/jumbo v5, "122*0#"

    const v6, 0x7f0d0b9b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v4, 0x2

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*122#"

    const-string/jumbo v5, "122*7*0#"

    const-string/jumbo v8, "#122*3#"

    const v6, 0x7f0d0b92

    const/4 v7, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const/4 v4, 0x3

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*122#"

    const-string/jumbo v5, "122*4*0#"

    const v6, 0x7f0d0b97

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v4, 0x4

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*122\\*1\\*[0-9+]*#"

    const-string/jumbo v5, "122*5*7#"

    const v6, 0x7f0d0b95

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v4, 0x5

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*122\\*1\\*[0-9+]*#"

    const-string/jumbo v5, "122*5*0#"

    const v6, 0x7f0d0b9b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v4, 0x6

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*122\\*1\\*[0-9+]*#"

    const-string/jumbo v5, "122*5*7*0#"

    const-string/jumbo v8, "#122*3#"

    const v6, 0x7f0d0b92

    const/4 v7, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const/4 v4, 0x7

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#122*2#"

    const-string/jumbo v5, "122*2*7#"

    const v6, 0x7f0d0b9e

    const/4 v7, 0x0

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const/16 v4, 0x8

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#122*2#"

    const-string/jumbo v5, "122*2*0#"

    const v6, 0x7f0d0b9b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x9

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#122*3#"

    const-string/jumbo v5, "122*3*7#"

    const v6, 0x7f0d0b9c

    const/4 v7, 0x0

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const/16 v4, 0xa

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#122*3#"

    const-string/jumbo v5, "122*3*0#"

    const v6, 0x7f0d0b9b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0xb

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#122*1#"

    const-string/jumbo v5, "122*1*7#"

    const v6, 0x7f0d0b9d

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0xc

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#122*1#"

    const-string/jumbo v5, "122*1*0#"

    const v6, 0x7f0d0b9b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0xd

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#122*1#"

    const-string/jumbo v5, "122\\*1\\*[74]{1}\\*[0-9]+#"

    const v6, 0x7f0d0b9f

    move-object v7, v11

    move-object v8, v14

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v4, 0xe

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#122*1#"

    const-string/jumbo v5, "122\\*1\\*[74]{1}\\*[0-9]+#"

    const v6, 0x7f0d0b9f

    move-object v7, v11

    move-object v8, v14

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v4, 0xf

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#122*1#"

    const-string/jumbo v5, "122*1*0#"

    const v6, 0x7f0d0b9b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x10

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "(\\*|#|\\*#)122(\\*[0-9]*)+#"

    const-string/jumbo v5, "*"

    const v6, 0x7f0d0b4c

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x11

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*145\\*[01]{0,1}(\\*[012]{0,1}){0,1}#"

    const-string/jumbo v5, "145*7*0*0#"

    const v6, 0x7f0d0b5f

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x12

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*145\\*[01]{0,1}(\\*[012]{0,1}){0,1}#"

    const-string/jumbo v5, "145*7*0*1#"

    const v6, 0x7f0d0b60

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x13

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*145\\*[01]{0,1}(\\*[012]{0,1}){0,1}#"

    const-string/jumbo v5, "145*7*0*2#"

    const v6, 0x7f0d0b61

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x14

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*145\\*[01]{0,1}(\\*[012]{0,1}){0,1}#"

    const-string/jumbo v5, "145*7*1*0#"

    const v6, 0x7f0d0b62

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x15

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*145\\*[01]{0,1}(\\*[012]{0,1}){0,1}#"

    const-string/jumbo v5, "145*7*1*1#"

    const v6, 0x7f0d0b63

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x16

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*145\\*[01]{0,1}(\\*[012]{0,1}){0,1}#"

    const-string/jumbo v5, "145*7*1*2#"

    const v6, 0x7f0d0b64

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x17

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#145#"

    const-string/jumbo v5, "145*7*0*0#"

    const v6, 0x7f0d0b5f

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x18

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#145#"

    const-string/jumbo v5, "145*7*0*1#"

    const v6, 0x7f0d0b60

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x19

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#145#"

    const-string/jumbo v5, "145*7*0*2#"

    const v6, 0x7f0d0b61

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x1a

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#145#"

    const-string/jumbo v5, "145*7*1*0#"

    const v6, 0x7f0d0b62

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x1b

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#145#"

    const-string/jumbo v5, "145*7*1*1#"

    const v6, 0x7f0d0b63

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x1c

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#145#"

    const-string/jumbo v5, "145*7*1*2#"

    const v6, 0x7f0d0b64

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x1d

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "(\\*|#|\\*#)145(\\*[0-9]*)+#"

    const-string/jumbo v5, "*"

    const v6, 0x7f0d0b4c

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x1e

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*146#"

    const-string/jumbo v5, "146*7#"

    const v6, 0x7f0d0ba2

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x1f

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*146#"

    const-string/jumbo v5, "146*0#"

    const v6, 0x7f0d0ba3

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x20

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#146#"

    const-string/jumbo v5, "146*6#"

    const v6, 0x7f0d0ba4

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x21

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#146#"

    const-string/jumbo v5, "146*0#"

    const v6, 0x7f0d0ba3

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x22

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#146#"

    const-string/jumbo v5, "146*7#"

    const v6, 0x7f0d0ba5

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x23

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#146#"

    const-string/jumbo v5, "146*6#"

    const v6, 0x7f0d0ba6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x24

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#146#"

    const-string/jumbo v5, "146*0#"

    const v6, 0x7f0d0ba3

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x25

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "(\\*|#|\\*#)146(\\*[0-9]*)+#"

    const-string/jumbo v5, "*"

    const v6, 0x7f0d0b4c

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x26

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*126#"

    const-string/jumbo v5, "126*7*3#"

    const v6, 0x7f0d0bda

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x27

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*126#"

    const-string/jumbo v5, "126*7*1#"

    const v6, 0x7f0d0bda

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x28

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*126#"

    const-string/jumbo v5, "126*0#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x29

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#126#"

    const-string/jumbo v5, "126*6*0#"

    const v6, 0x7f0d0bdb

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x2a

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#126#"

    const-string/jumbo v5, "126*6*2#"

    const v6, 0x7f0d0bdb

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x2b

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#126#"

    const-string/jumbo v5, "126*0#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x2c

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#126#"

    const-string/jumbo v5, "126*6#"

    const v6, 0x7f0d0bdc

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x2d

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#126#"

    const-string/jumbo v5, "126*7#"

    const v6, 0x7f0d0bd9

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x2e

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#126#"

    const-string/jumbo v5, "126*0#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x2f

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*126*1#"

    const-string/jumbo v5, "126*1*7*3#"

    const v6, 0x7f0d0bd3

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x30

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*126*1#"

    const-string/jumbo v5, "126*1*7*1#"

    const v6, 0x7f0d0bd3

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x31

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*126*1#"

    const-string/jumbo v5, "126*1*0#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x32

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#126*1#"

    const-string/jumbo v5, "126*1*6*0#"

    const v6, 0x7f0d0bd4

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x33

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#126*1#"

    const-string/jumbo v5, "126*1*6*2#"

    const v6, 0x7f0d0bd4

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x34

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#126*1#"

    const-string/jumbo v5, "126*1*0#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x35

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#126*1#"

    const-string/jumbo v5, "126*1*7#"

    const v6, 0x7f0d0bd5

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x36

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#126*1#"

    const-string/jumbo v5, "126*1*6#"

    const v6, 0x7f0d0bd6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x37

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#126*1#"

    const-string/jumbo v5, "126*1*0#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x38

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "(\\*|#|\\*#)126(\\*[0-9]*)+#"

    const-string/jumbo v5, "*"

    const v6, 0x7f0d0b4c

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x39

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*149#"

    const-string/jumbo v5, "149*7*3#"

    const v6, 0x7f0d0b72

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x3a

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*149#"

    const-string/jumbo v5, "149*7*1#"

    const v6, 0x7f0d0b72

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x3b

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#149#"

    const-string/jumbo v5, "149*6#"

    const v6, 0x7f0d0b73

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x3c

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#149#"

    const-string/jumbo v5, "149*7#"

    const v6, 0x7f0d0b76

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x3d

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#149#"

    const-string/jumbo v5, "149*6#"

    const v6, 0x7f0d0b77

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x3e

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "(\\*|#|\\*#)149(\\*[0-9]*)+#"

    const-string/jumbo v5, "*"

    const v6, 0x7f0d0b4c

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x3f

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*125#"

    const-string/jumbo v5, "125*7*3#"

    const v6, 0x7f0d0b78

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x40

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*125#"

    const-string/jumbo v5, "125*7*1#"

    const v6, 0x7f0d0b78

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x41

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*125#"

    const-string/jumbo v5, "125*0#"

    const v6, 0x7f0d0b79

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x42

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#125#"

    const-string/jumbo v5, "125*6*0#"

    const v6, 0x7f0d0b7a

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x43

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#125#"

    const-string/jumbo v5, "125*6*2#"

    const v6, 0x7f0d0b7a

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x44

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#125#"

    const-string/jumbo v5, "125*0#"

    const v6, 0x7f0d0b79

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x45

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#125#"

    const-string/jumbo v5, "125*6#"

    const v6, 0x7f0d0b7c

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x46

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#125#"

    const-string/jumbo v5, "125*7#"

    const v6, 0x7f0d0b7b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x47

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#125#"

    const-string/jumbo v5, "125*0#"

    const v6, 0x7f0d0b79

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x48

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "(\\*|#|\\*#)125(\\*[0-9]*)+#"

    const-string/jumbo v5, "*"

    const v6, 0x7f0d0b4c

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x49

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*139*1*1#"

    const-string/jumbo v5, "139*1*7*3*1#"

    const v6, 0x7f0d0b7f

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x4a

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*139*1*1#"

    const-string/jumbo v5, "139*1*7*1*1#"

    const v6, 0x7f0d0b7f

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x4b

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#139*1#"

    const-string/jumbo v5, "139\\*1\\*6\\*0\\*[01]{1}#"

    const v6, 0x7f0d0b80

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x4c

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#139*1#"

    const-string/jumbo v5, "139\\*1\\*6\\*2\\*[01]{1}#"

    const v6, 0x7f0d0b80

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x4d

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#139*1#"

    const-string/jumbo v5, "139*1*7*1#"

    const v6, 0x7f0d0b81

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x4e

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#139*1#"

    const-string/jumbo v5, "139*1*7*0#"

    const v6, 0x7f0d0b82

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x4f

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#139*1#"

    const-string/jumbo v5, "139\\*1\\*6\\*[01]{1}#"

    const v6, 0x7f0d0b82

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x50

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "(\\*|#|\\*#)139(\\*[0-9]*)+#"

    const-string/jumbo v5, "*"

    const v6, 0x7f0d0b4c

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x51

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*351\\*[0-9]{4}#"

    const-string/jumbo v5, "351*5#"

    const v6, 0x7f0d0bc7

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x52

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*351\\*[0-9]{4}\\*#"

    const-string/jumbo v5, "351*5#"

    const v6, 0x7f0d0bc7

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x53

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*351\\*[0-9]{4}\\*20#"

    const-string/jumbo v5, "351\\*5(\\*[0-9]{0,2}){0,1}#"

    const v6, 0x7f0d0bc9

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x54

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*351\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "351*36#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x55

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*351\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "351*17#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x56

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*351\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "351*10#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x57

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*351\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "351*38#"

    const v6, 0x7f0d0bc8

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x58

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*351\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "351*13#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x59

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#351\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "351*4#"

    const v6, 0x7f0d0bca

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x5a

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#351\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "351*36#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x5b

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#351\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "351*17#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x5c

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#351\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "351*38#"

    const v6, 0x7f0d0bcb

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x5d

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#351\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "351*13#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x5e

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#351(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "351*4#"

    const v6, 0x7f0d0bcf

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x5f

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#351(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "351**24#"

    const v6, 0x7f0d0bce

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x60

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#351(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "351**24*32#"

    const v6, 0x7f0d0bcc

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x61

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#351(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "351**24*16*32#"

    const v6, 0x7f0d0bcc

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x62

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#351(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "351***16*32#"

    const v6, 0x7f0d0bcc

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x63

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#351(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "351**9#"

    const v6, 0x7f0d0bcc

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x64

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#351(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "351*36#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x65

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#351(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "351*0#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x66

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#351(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "351*13#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x67

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#351(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "351*5#"

    const v6, 0x7f0d0bc7

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x68

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "(\\*|#|\\*#)351(\\*[0-9]*)+#"

    const-string/jumbo v5, "*"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x69

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*101\\*[0-9]{4}#"

    const-string/jumbo v5, "101*5#"

    const v6, 0x7f0d0bc7

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x6a

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*101\\*[0-9]{4}\\*#"

    const-string/jumbo v5, "101*5#"

    const v6, 0x7f0d0bc7

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x6b

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*101\\*[0-9]{4}\\*20#"

    const-string/jumbo v5, "101\\*5(\\*[0-9]{0,2}){0,1}#"

    const v6, 0x7f0d0bc9

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x6c

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*101\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "101*36#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x6d

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*101\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "101*17#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x6e

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*101\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "101*10#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x6f

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*101\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "101*38#"

    const v6, 0x7f0d0bc8

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x70

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*101\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "101*13#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x71

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*101\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "101*1#"

    const v6, 0x7f0d0bc8

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x72

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#101\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "101*4#"

    const v6, 0x7f0d0bca

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x73

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#101\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "101*36#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x74

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#101\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "101*17#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x75

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#101\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "101*38#"

    const v6, 0x7f0d0bcb

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x76

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#101\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "101*13#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x77

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#101\\*[0-9]{4}(\\*[0-9]{0,2}){0,1}#"

    const-string/jumbo v5, "101*1#"

    const v6, 0x7f0d0bcb

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x78

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "101*4#"

    const v6, 0x7f0d0bcf

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x79

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "101**24#"

    const v6, 0x7f0d0bce

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x7a

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "101*5*24#"

    const v6, 0x7f0d0bce

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x7b

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "101**24*32#"

    const v6, 0x7f0d0bcc

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x7c

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "101**24*16*32#"

    const v6, 0x7f0d0bcc

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x7d

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "101***16*32#"

    const v6, 0x7f0d0bcc

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x7e

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "101**9#"

    const v6, 0x7f0d0bcc

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x7f

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "101*36#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x80

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "101*0#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x81

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "101*13#"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x82

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101(\\*[0-9]{0,2}){0,2}#"

    const-string/jumbo v5, "101*5#"

    const v6, 0x7f0d0bc7

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x83

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "(\\*|#|\\*#)101(\\*[0-9]*)+#"

    const-string/jumbo v5, "*"

    const v6, 0x7f0d0bcd

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x84

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101#"

    const-string/jumbo v5, "101*4#"

    const v6, 0x7f0d0bcf

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x85

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101#"

    const-string/jumbo v5, "101*5*24#"

    const v6, 0x7f0d0bce

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x86

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101#"

    const-string/jumbo v5, "101*5*2*24*3*32#"

    const v6, 0x7f0d0bcc

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x87

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101#"

    const-string/jumbo v5, "101*5*2*24*3*16*3*32#"

    const v6, 0x7f0d0bcc

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x88

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101#"

    const-string/jumbo v5, "101*5*3*16*3*32#"

    const v6, 0x7f0d0bcc

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x89

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "\\*#101#"

    const-string/jumbo v5, "101*0#"

    const v6, 0x7f0d0b4b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x8a

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*43#"

    const-string/jumbo v5, "43*5#"

    const v6, 0x7f0d0b69

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x8b

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*43#"

    const-string/jumbo v5, "43*17#"

    const v6, 0x7f0d0b6a

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x8c

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#43#"

    const-string/jumbo v5, "43*4#"

    const v6, 0x7f0d0b6b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x8d

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#43#"

    const-string/jumbo v5, "43*17#"

    const v6, 0x7f0d0b6a

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x8e

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#43#"

    const-string/jumbo v5, "43*5#"

    const v6, 0x7f0d0b45

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x8f

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#43#"

    const-string/jumbo v5, "43*4#"

    const v6, 0x7f0d0b46

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x90

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#43#"

    const-string/jumbo v5, "43*0#"

    const v6, 0x7f0d0b6a

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x91

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*102#"

    const-string/jumbo v5, "102*0#"

    const v6, 0x7f0d0b6a

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x92

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*102#"

    const-string/jumbo v5, "102*5#"

    const v6, 0x7f0d0b69

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x93

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*102#"

    const-string/jumbo v5, "102*17#"

    const v6, 0x7f0d0b6a

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x94

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#102#"

    const-string/jumbo v5, "102*4#"

    const v6, 0x7f0d0b6b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x95

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#102#"

    const-string/jumbo v5, "102*0#"

    const v6, 0x7f0d0b6a

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x96

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "#102#"

    const-string/jumbo v5, "102*17#"

    const v6, 0x7f0d0b6a

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x97

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#102#"

    const-string/jumbo v5, "102*5#"

    const v6, 0x7f0d0b45

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x98

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#102#"

    const-string/jumbo v5, "102*4#"

    const v6, 0x7f0d0b46

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x99

    aput-object v3, v19, v4

    new-instance v3, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;

    const-string/jumbo v4, "*#102#"

    const-string/jumbo v5, "102*0#"

    const v6, 0x7f0d0b6a

    invoke-direct {v3, v4, v5, v6}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x9a

    aput-object v3, v19, v4

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/4 v12, 0x0

    :goto_0
    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    aget-object v3, v19, v12

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1, v15}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->checkUssd(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    aget-object v3, v19, v12

    invoke-virtual {v3}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->getUssdRegularNum()I

    move-result v21

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v3, v19, v12

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_0

    aput-object v24, v22, v23

    :cond_0
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aget-object v4, v22, v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aget-object v3, v19, v12

    invoke-static {v3}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->-get0(Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/PhoneUssdAnalyzer;->mCurrentRecoveryOperate:Z

    aget-object v3, v19, v12

    invoke-static {v3}, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->-get1(Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/PhoneUssdAnalyzer;->mCurrentRecoveryUssd:Ljava/lang/String;

    return-object v17

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/android/phone/PhoneUssdAnalyzer;->checkErrorCode(Ljava/lang/CharSequence;Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneUssdAnalyzer;->resultRegisterReplyMessage(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v16

    if-eqz v16, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_5
    sget-object v3, Lcom/android/phone/PhoneUssdAnalyzer;->sPatternSupportUSSD:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_6

    return-object p2

    :cond_6
    const v3, 0x7f0d0b4c

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final getRecoveryUssd()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/phone/PhoneUssdAnalyzer;->mCurrentRecoveryUssd:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer;->mCurrentRecoveryUssd:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final isRecovery()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/PhoneUssdAnalyzer;->mCurrentRecoveryUssd:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneUssdAnalyzer;->mCurrentRecoveryUssd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isUserOperation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/PhoneUssdAnalyzer;->mCurrentRecoveryOperate:Z

    return v0
.end method
