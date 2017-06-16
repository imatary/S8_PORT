.class public Lcom/android/bluetooth/util/Interop;
.super Ljava/lang/Object;
.source "Interop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/util/Interop$Entry;
    }
.end annotation


# static fields
.field public static final INTEROP_MAP_ASCIIONLY:I = 0x1

.field private static entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/util/Interop$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/util/Interop;->entries:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lazyInitInteropDatabase()V
    .locals 4

    sget-object v0, Lcom/android/bluetooth/util/Interop;->entries:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/util/Interop;->entries:Ljava/util/List;

    sget-object v0, Lcom/android/bluetooth/util/Interop;->entries:Ljava/util/List;

    new-instance v1, Lcom/android/bluetooth/util/Interop$Entry;

    const-string/jumbo v2, "00:26:e8"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/android/bluetooth/util/Interop$Entry;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static matchByAddress(ILjava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v4

    :cond_1
    invoke-static {}, Lcom/android/bluetooth/util/Interop;->lazyInitInteropDatabase()V

    sget-object v2, Lcom/android/bluetooth/util/Interop;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/util/Interop$Entry;

    iget v2, v0, Lcom/android/bluetooth/util/Interop$Entry;->workaround_id:I

    if-ne v2, p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/util/Interop$Entry;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_3
    return v4
.end method
