.class public abstract Lcom/android/phone/common/mail/store/imap/ImapString;
.super Lcom/android/phone/common/mail/store/imap/ImapElement;
.source "ImapString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/store/imap/ImapString$1;
    }
.end annotation


# static fields
.field private static final DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final EMPTY:Lcom/android/phone/common/mail/store/imap/ImapString;

.field private static final EMPTY_BYTES:[B


# instance fields
.field private mIsInteger:Z

.field private mParsedDate:Ljava/util/Date;

.field private mParsedInteger:I


# direct methods
.method static synthetic -get0()[B
    .locals 1

    sget-object v0, Lcom/android/phone/common/mail/store/imap/ImapString;->EMPTY_BYTES:[B

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/phone/common/mail/store/imap/ImapString;->EMPTY_BYTES:[B

    new-instance v0, Lcom/android/phone/common/mail/store/imap/ImapString$1;

    invoke-direct {v0}, Lcom/android/phone/common/mail/store/imap/ImapString$1;-><init>()V

    sput-object v0, Lcom/android/phone/common/mail/store/imap/ImapString;->EMPTY:Lcom/android/phone/common/mail/store/imap/ImapString;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd-MMM-yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/phone/common/mail/store/imap/ImapString;->DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapElement;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAsStream()Ljava/io/InputStream;
.end method

.method public final getDateOrNull()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;->isDate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapString;->mParsedDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getNumber(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget v0, p0, Lcom/android/phone/common/mail/store/imap/ImapString;->mParsedInteger:I

    return v0
.end method

.method public final getNumberOrZero()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/common/mail/store/imap/ImapString;->getNumber(I)I

    move-result v0

    return v0
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public final is(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isDate()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapString;->mParsedDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/phone/common/mail/store/imap/ImapString;->DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapString;->mParsedDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ImapString"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " can\'t be parsed as a date."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public final isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isNumber()Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/phone/common/mail/store/imap/ImapString;->mIsInteger:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/common/mail/store/imap/ImapString;->mParsedInteger:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/common/mail/store/imap/ImapString;->mIsInteger:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public final isString()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final startsWith(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public abstract toString()Ljava/lang/String;
.end method
