.class public Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;
.super Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;
.source "PhoneNumberLocatorDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;
    }
.end annotation


# static fields
.field private static isLanguageChange:Z


# instance fields
.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private final extraSize:I

.field private mDownloadThread:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isLanguageChange:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->saveValuesBeforeUpdate()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->saveValuesForSuccess()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isLanguageChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->dateFormat:Ljava/text/SimpleDateFormat;

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->extraSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->dateFormat:Ljava/text/SimpleDateFormat;

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->extraSize:I

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static CopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    const/4 v4, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v9, 0x2000

    :try_start_2
    new-array v0, v9, [B

    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    move-object v7, v8

    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    if-eqz v7, :cond_3

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_2
    throw v9

    :cond_4
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_5

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    if-eqz v8, :cond_6

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_6
    :goto_3
    invoke-static {p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->changePermission(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    if-eqz v8, :cond_6

    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_3

    :catchall_1
    move-exception v9

    if-eqz v8, :cond_7

    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_7
    :goto_4
    throw v9

    :catch_3
    move-exception v3

    goto :goto_4

    :catch_4
    move-exception v3

    goto :goto_2

    :catch_5
    move-exception v3

    if-eqz v7, :cond_3

    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    :catch_6
    move-exception v3

    goto :goto_2

    :catchall_2
    move-exception v9

    if-eqz v7, :cond_8

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_8
    :goto_5
    throw v9

    :catch_7
    move-exception v3

    goto :goto_5

    :catchall_3
    move-exception v9

    goto :goto_1

    :catchall_4
    move-exception v9

    move-object v4, v5

    goto :goto_1
.end method

.method private DeleteFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private static changePermission(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "chmod 644 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    return-void
.end method

.method public static isChinese(C)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    return v1
.end method

.method public static isMessyCode(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-char v0, v1, v2

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isChinese(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PhoneNumberLocatorDownloader"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "PhoneNumberLocatorDownloader"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private saveValuesBeforeUpdate()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lastUpdateTime"

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->getCurrentTime()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "updateSuccess"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->tryTimes:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->tryTimes:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->tryTimes:I

    :goto_0
    const-string/jumbo v1, "tryTimes"

    sget v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->tryTimes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    const/4 v1, 0x3

    sput v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->tryTimes:I

    goto :goto_0
.end method

.method private saveValuesForSuccess()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "saveValuesForSuccess()"

    invoke-direct {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "bTryAgain10"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "lastUpdateTime"

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->getCurrentTime()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "tryTimes"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "updateSuccess"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method getBufferUnicodeString([BII)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x80

    new-array v0, v6, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_0

    add-int v6, p2, v3

    aget-byte v6, p1, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_1

    rem-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_3

    add-int/lit8 v6, p3, -0x1

    if-ge v3, v6, :cond_3

    aget-byte v6, v0, v3

    if-nez v6, :cond_3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v4, v6

    :goto_3
    if-eqz v4, :cond_4

    :cond_1
    new-array v5, v1, [B

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_5

    aget-byte v6, v0, v3

    aput-byte v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_2
    move v6, v7

    goto :goto_2

    :cond_3
    move v4, v7

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBufferUnicodeString buffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "End"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "UTF-16LE"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v6, ""

    return-object v6
.end method

.method public getCurrentTime()I
    .locals 3

    const-string/jumbo v2, "getCurrentTime"

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getVersionInfo(Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v6, 0x20

    new-array v0, v6, [B

    new-instance v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    invoke-direct {v5}, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "r"

    invoke-direct {v4, p1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getVersionInfo file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ois: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_0

    const-string/jumbo v6, "displayVersion count error"

    invoke-direct {p0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->version:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->displayVersion:Ljava/lang/String;

    iget-object v6, v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->version:Ljava/lang/String;

    const-string/jumbo v7, "Korean"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->version:Ljava/lang/String;

    const-string/jumbo v7, "Korean"

    const-string/jumbo v8, " "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->displayVersion:Ljava/lang/String;

    :cond_1
    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_2

    const-string/jumbo v6, "lastUpdate count error"

    invoke-direct {p0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_2
    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_3

    const-string/jumbo v6, "dbSize count error"

    invoke-direct {p0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->dbSize:J

    iget-wide v6, v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->dbSize:J

    const-wide/16 v8, 0xc

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->dbSize:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getVersionInfo version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "lastUpdate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "dbSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->dbSize:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "End"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v3, 0x0

    :cond_4
    :goto_1
    return-object v5

    :catch_0
    move-exception v2

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v3, 0x0

    :cond_5
    :goto_3
    throw v6

    :catch_2
    move-exception v2

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_2

    :cond_6
    move-object v3, v4

    goto :goto_0
.end method

.method public readDownloadFileInfo(Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;)V
    .locals 28

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v17, 0x0

    const/16 v4, 0x2000

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v6, v0, [B

    const/16 v19, 0x2000

    move/from16 v0, v19

    new-array v5, v0, [B

    :try_start_0
    new-instance v18, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v26, "r"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v22

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    move-wide/from16 v26, v0

    cmp-long v19, v26, v22

    if-eqz v19, :cond_1

    const-string/jumbo v19, "PhoneNumberLocatorDownloader"

    const-string/jumbo v26, "file size not correct"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v18, :cond_d

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v17, 0x0

    :goto_0
    return-void

    :catch_0
    move-exception v13

    move-object/from16 v17, v18

    goto :goto_0

    :cond_1
    const-wide/16 v26, 0x0

    cmp-long v19, v22, v26

    if-lez v19, :cond_2

    const-wide/16 v26, 0x0

    :try_start_3
    move-object/from16 v0, v18

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_2
    const/16 v19, 0x0

    const/16 v26, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v7

    if-gez v7, :cond_3

    const-string/jumbo v19, "buffermark count error"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->startmarker:J

    new-instance v12, Ljava/util/zip/CRC32;

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    const-wide/16 v26, 0xc

    sub-long v20, v22, v26

    :goto_1
    const-wide/16 v26, 0x0

    cmp-long v19, v20, v26

    if-lez v19, :cond_7

    const-wide/16 v26, 0x2000

    cmp-long v19, v20, v26

    if-ltz v19, :cond_5

    const/16 v19, 0x0

    const/16 v26, 0x2000

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v20, v20, v26

    invoke-virtual {v12, v5}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v16

    move-object/from16 v17, v18

    :goto_2
    :try_start_4
    const-string/jumbo v19, "PhoneNumberLocatorDownloader"

    const-string/jumbo v26, "read error when read marks and crc32 from file"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v17, :cond_4

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    const/16 v17, 0x0

    :cond_4
    :goto_3
    return-void

    :cond_5
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    :try_start_6
    move/from16 v0, v19

    new-array v5, v0, [B

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v7

    if-gez v7, :cond_6

    const-string/jumbo v19, "bufferdata count error"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v12, v5}, Ljava/util/zip/CRC32;->update([B)V

    const-wide/16 v20, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->crc32CalculateFromData:J

    const-wide/16 v26, 0x8

    cmp-long v19, v22, v26

    if-lez v19, :cond_8

    const-wide/16 v26, 0x8

    sub-long v26, v22, v26

    move-object/from16 v0, v18

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_8
    const/16 v19, 0x0

    const/16 v26, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v7

    if-gez v7, :cond_9

    const-string/jumbo v19, "buffermark2 count error"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v10

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->crc32ReadFromFile:J

    const/16 v19, 0x0

    const/16 v26, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v7

    if-gez v7, :cond_a

    const-string/jumbo v19, "buffermark3 count error"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->readUnsignedInt([B)J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->endmarker:J

    const-string/jumbo v19, "PhoneNumberLocatorDownloader"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "start marker = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\ncrc32 = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\ncrc32 = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\nendmark = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v18, :cond_b

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    const/16 v17, 0x0

    goto/16 :goto_3

    :catch_2
    move-exception v13

    :cond_b
    move-object/from16 v17, v18

    goto/16 :goto_3

    :catch_3
    move-exception v13

    goto/16 :goto_3

    :catchall_0
    move-exception v19

    :goto_4
    if-eqz v17, :cond_c

    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    const/16 v17, 0x0

    :cond_c
    :goto_5
    throw v19

    :catch_4
    move-exception v13

    goto :goto_5

    :catchall_1
    move-exception v19

    move-object/from16 v17, v18

    goto :goto_4

    :catch_5
    move-exception v16

    goto/16 :goto_2

    :cond_d
    move-object/from16 v17, v18

    goto/16 :goto_0
.end method

.method public readUnsignedInt([B)J
    .locals 11

    const/4 v8, 0x0

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v0, v8

    const/4 v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x8

    shl-long v2, v8, v10

    const/4 v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long v4, v8, v10

    const/4 v8, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long v6, v8, v10

    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    return-wide v8
.end method

.method public setCallback(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setTypeAuto(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    return-void
.end method

.method public startDownloadThread()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v1, "startDownloadThread"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;)V

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;

    invoke-virtual {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->startThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-boolean v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto :goto_0
.end method

.method public stopDownloadThread()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "stopDownloadThread"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->stopThread()V

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mDownloadThread:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;

    :cond_1
    return-void
.end method
