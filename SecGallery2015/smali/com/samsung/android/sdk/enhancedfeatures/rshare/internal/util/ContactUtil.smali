.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContactUtil;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# direct methods
.method public static convertSharingListForServer(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/PhoneNumber;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->getIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContactUtil;->convertSharingListForServer([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public static convertSharingListForServer([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/PhoneNumber;",
            ">;"
        }
    .end annotation

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getMCC(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->Account_SSO_MCC:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->Account_SSO_ISO2:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    const-string/jumbo v15, "ZZ"

    const/4 v8, 0x0

    array-length v0, v11

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v10, v11, v19

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    aget-object v19, v9, v8

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "rg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "ContactUtil"

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v13, p0, v19

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "parsing number : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "ContactUtil"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v15}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v14

    const-string/jumbo v21, "Parsing number"

    const-string/jumbo v22, "ContactUtil"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v21, "my region=%s org=%s cc = %d, num =%d"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    const/16 v23, 0x1

    aput-object v14, v22, v23

    const/16 v23, 0x2

    invoke-virtual {v14}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    invoke-virtual {v14}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "ContactUtil"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Lcom/samsung/android/sdk/ssf/share/io/PhoneNumber;

    invoke-virtual {v14}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v14}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aget-object v23, p1, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/share/io/PhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v8, v8, 0x1

    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v6

    :try_start_1
    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "ContactUtil"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/NumberUtils;->convertMCC2CountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v21, "rg=%s mcc=%s ccc=%s c.number=%s"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    const/16 v23, 0x1

    aput-object v17, v22, v23

    const/16 v23, 0x2

    aput-object v4, v22, v23

    const/16 v23, 0x3

    aput-object v13, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v21, "ContactUtil"

    move-object/from16 v0, v21

    invoke-static {v12, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/samsung/android/sdk/ssf/share/io/PhoneNumber;

    aget-object v21, p1, v8

    move-object/from16 v0, v21

    invoke-direct {v14, v4, v13, v0}, Lcom/samsung/android/sdk/ssf/share/io/PhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catchall_0
    move-exception v19

    add-int/lit8 v8, v8, 0x1

    throw v19

    :cond_2
    return-object v16
.end method

.method public static isValidateNumber(Ljava/lang/String;)Z
    .locals 12

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_0
    return v8

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->Account_SSO_MCC:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->Account_SSO_ISO2:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getMCC(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, "ZZ"

    const/4 v2, 0x0

    array-length v10, v5

    move v9, v8

    :goto_1
    if-ge v9, v10, :cond_1

    aget-object v4, v5, v9

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    aget-object v9, v3, v2

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v9

    invoke-virtual {v9, p0, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v9, "isValidateNumber parsing error, wrong number"

    const-string/jumbo v10, "ContactUtil"

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
