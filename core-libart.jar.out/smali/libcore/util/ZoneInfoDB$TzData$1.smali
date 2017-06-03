.class Llibcore/util/ZoneInfoDB$TzData$1;
.super Llibcore/util/BasicLruCache;
.source "ZoneInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfoDB$TzData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/lang/String;",
        "Llibcore/util/ZoneInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Llibcore/util/ZoneInfoDB$TzData;


# direct methods
.method constructor <init>(Llibcore/util/ZoneInfoDB$TzData;I)V
    .locals 0

    iput-object p1, p0, Llibcore/util/ZoneInfoDB$TzData$1;->this$1:Llibcore/util/ZoneInfoDB$TzData;

    invoke-direct {p0, p2}, Llibcore/util/BasicLruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llibcore/util/ZoneInfoDB$TzData$1;->create(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v0

    return-object v0
.end method

.method protected create(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData$1;->this$1:Llibcore/util/ZoneInfoDB$TzData;

    invoke-virtual {v1, p1}, Llibcore/util/ZoneInfoDB$TzData;->getBufferIterator(Ljava/lang/String;)Llibcore/io/BufferIterator;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-static {p1, v0}, Llibcore/util/ZoneInfo;->makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;)Llibcore/util/ZoneInfo;

    move-result-object v1

    return-object v1
.end method
