.class final Lcom/sec/android/app/ve/pm/ProjectManager$1;
.super Ljava/lang/Object;
.source "ProjectManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/pm/ProjectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)I
    .locals 4

    invoke-virtual {p2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjCreationTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getProjCreationTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    check-cast p2, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/ve/pm/ProjectManager$1;->compare(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)I

    move-result v0

    return v0
.end method
