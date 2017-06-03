.class public final Llibcore/net/http/HttpDate;
.super Ljava/lang/Object;
.source "HttpDate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HttpDate$1;
    }
.end annotation


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/lang/String;

.field private static final STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Llibcore/net/http/HttpDate$1;

    invoke-direct {v0}, Llibcore/net/http/HttpDate$1;-><init>()V

    sput-object v0, Llibcore/net/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE MMM d HH:mm:ss yyyy"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE, dd MMM yy HH:mm:ss z"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE dd-MMM-yyyy HH:mm:ss z"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE dd MMM yyyy HH:mm:ss z"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE dd-MMM-yyyy HH-mm-ss z"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE dd-MMM-yy HH:mm:ss z"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE dd MMM yy HH:mm:ss z"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE,dd-MMM-yy HH:mm:ss z"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE, dd-MM-yyyy HH:mm:ss z"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE MMM d yyyy HH:mm:ss z"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Llibcore/net/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    sget-object v0, Llibcore/net/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 7

    :try_start_0
    sget-object v2, Llibcore/net/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DateFormat;

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    sget-object v3, Llibcore/net/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    :try_start_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    :catch_1
    move-exception v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
