.class public final Lcom/adobe/internal/xmp/XMPDateTimeFactory;
.super Ljava/lang/Object;
.source "XMPDateTimeFactory.java"


# static fields
.field private static final UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/adobe/internal/xmp/XMPDateTimeFactory;->UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public static createFromCalendar(Ljava/util/Calendar;)Lcom/adobe/internal/xmp/XMPDateTime;
    .locals 1

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0, p0}, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method
