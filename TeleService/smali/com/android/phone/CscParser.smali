.class public Lcom/android/phone/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# static fields
.field private static mFileName:Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/CscParser;


# instance fields
.field private mDoc:Lorg/w3c/dom/Document;

.field private mRoot:Lorg/w3c/dom/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/phone/CscParser;

    invoke-static {}, Lcom/android/phone/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/CscParser;->sInstance:Lcom/android/phone/CscParser;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/phone/CscParser;->mFileName:Ljava/lang/String;

    :try_start_0
    sget-object v1, Lcom/android/phone/CscParser;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/CscParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCustomerPath()Ljava/lang/String;
    .locals 14

    const-string/jumbo v4, "/system/csc/customer.xml"

    invoke-static {}, Lcom/android/phone/CscParser;->getOmcCustomerPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/CscParser;->getOmcPath()Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v11, "/proc/LinuStoreIII/efs_info"

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v8, Ljava/io/FileReader;

    const-string/jumbo v11, "/proc/LinuStoreIII/efs_info"

    invoke-direct {v8, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/io/File;

    const-string/jumbo v11, "/system/csc/customer.xml"

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v4, v10

    :cond_0
    :goto_0
    const-string/jumbo v11, "CscParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "customer_path ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    move-object v7, v8

    :goto_1
    if-eqz v7, :cond_1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :goto_2
    return-object v4

    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v4, "/system/csc/customer.xml"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :cond_4
    :try_start_5
    const-string/jumbo v11, "CscParser"

    const-string/jumbo v12, "mps_code.dat does not exist"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v4, v3

    :goto_3
    const-string/jumbo v11, "CscParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "customer_path ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_4
    :try_start_6
    const-string/jumbo v11, "CscParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_5

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_2

    :cond_6
    :try_start_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_7

    move-object v4, v10

    goto :goto_3

    :cond_7
    const-string/jumbo v4, "/system/csc/customer.xml"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v7, :cond_8

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_9
    :goto_6
    throw v11

    :catch_2
    move-exception v9

    goto :goto_6

    :catchall_1
    move-exception v11

    move-object v7, v8

    goto :goto_5

    :catchall_2
    move-exception v11

    move-object v0, v1

    move-object v7, v8

    goto :goto_5

    :catch_3
    move-exception v5

    move-object v7, v8

    goto :goto_4

    :catch_4
    move-exception v5

    move-object v0, v1

    move-object v7, v8

    goto :goto_4

    :catch_5
    move-exception v9

    goto/16 :goto_2
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/android/phone/CscParser;
    .locals 4

    :try_start_0
    sget-object v1, Lcom/android/phone/CscParser;->sInstance:Lcom/android/phone/CscParser;

    invoke-direct {v1, p0}, Lcom/android/phone/CscParser;->update(Ljava/lang/String;)V

    const-string/jumbo v1, "CscParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInstance fileName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/android/phone/CscParser;->sInstance:Lcom/android/phone/CscParser;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNetworkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "CscParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getNetworkName: MCCMNC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  gid1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const-string/jumbo v7, "CscParser"

    const-string/jumbo v8, "getNetworkName: MCCMNC is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_1
    invoke-static {}, Lcom/android/phone/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CscParser;->getInstance(Ljava/lang/String;)Lcom/android/phone/CscParser;

    move-result-object v1

    const-string/jumbo v7, "GeneralInfo"

    invoke-virtual {v1, v7}, Lcom/android/phone/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v7, "CscParser"

    const-string/jumbo v8, "getNetworkName: No GenralInfo node"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_2
    const-string/jumbo v7, "NetworkInfo"

    invoke-virtual {v1, v2, v7}, Lcom/android/phone/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v7, "CscParser"

    const-string/jumbo v8, "getNetworkName: No NetworkInfo node"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v0, v7, :cond_7

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string/jumbo v8, "MCCMNC"

    invoke-static {v7, v8}, Lcom/android/phone/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/android/phone/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_5
    const-string/jumbo v7, "CscParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getNetworkName: Found matched network name by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_6

    const-string/jumbo v7, "CscParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getNetworkName: subsetCode by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string/jumbo v8, "NetworkName"

    invoke-static {v7, v8}, Lcom/android/phone/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    :cond_7
    return-object v6

    :cond_8
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string/jumbo v8, "SubsetCode"

    invoke-static {v7, v8}, Lcom/android/phone/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static getOmcCustomerPath()Ljava/lang/String;
    .locals 5

    const-string/jumbo v2, "persist.sys.omcnw_path"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.omc_path"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "CscParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getOmcCustomerPath() : mps_nwCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mps_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/customer.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/customer.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getOmcPath()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "persist.sys.omc_path"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/customer.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v3
.end method

.method public static getSimOperator(I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "LRA"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "gsm.apn.sim.operator.numeric"

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private update(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "CscParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fileName + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CscParser;->mDoc:Lorg/w3c/dom/Document;

    iget-object v3, p0, Lcom/android/phone/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CscParser;->mRoot:Lorg/w3c/dom/Node;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "CscParser"

    const-string/jumbo v4, "update(): file not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/phone/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v1
.end method

.method public getNbMMSView()I
    .locals 5

    const/4 v0, -0x1

    const-string/jumbo v2, "Settings.Messages.MMS.NbMMSView"

    invoke-virtual {p0, v2}, Lcom/android/phone/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v2, "CscParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNbMMSView : Nb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getUaUap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string/jumbo v9, "CscParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getUaUap : type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "   gid1= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CscParser;->getNbMMSView()I

    move-result v0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-le v0, v9, :cond_0

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/phone/CscParser;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p2}, Lcom/android/phone/CscParser;->getNetworkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "CscParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getUaUap : NetworkName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/CscParser;->getInstance(Ljava/lang/String;)Lcom/android/phone/CscParser;

    move-result-object v3

    const-string/jumbo v9, "Settings.Messages.MMS"

    invoke-virtual {v3, v9}, Lcom/android/phone/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v9, "CscParser"

    const-string/jumbo v10, "getUaUap : return null by not found NODE_CSC_MMS"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v9, "MMSView"

    invoke-virtual {v3, v5, v9}, Lcom/android/phone/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    if-nez v6, :cond_3

    const-string/jumbo v9, "CscParser"

    const-string/jumbo v10, "getUaUap : return null by not found NODE_CSC_MMSVIEW"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_3
    if-eqz v4, :cond_6

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_6

    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    const-string/jumbo v10, "NetworkName"

    invoke-static {v9, v10}, Lcom/android/phone/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "CscParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getUaUap: Found matched network name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/android/phone/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v9, "CscParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_6
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_7

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/android/phone/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-static {v7}, Lcom/android/phone/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "CscParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getUaUap: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_7
    const/4 v9, 0x0

    return-object v9
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CscParser;->mRoot:Lorg/w3c/dom/Node;

    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    invoke-static {v0, v1}, Lcom/android/phone/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    iget-object v5, p0, Lcom/android/phone/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    return-object v5
.end method
