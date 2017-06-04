.class Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ElementListComparator;
.super Ljava/lang/Object;
.source "TranscodeElementWrapper.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElementListComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/app/video/editor/external/Element;",
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
.method public compare(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStoryBoardStartTime()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/Element;->getStoryBoardStartTime()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/app/video/editor/external/Element;

    check-cast p2, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ElementListComparator;->compare(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)I

    move-result v0

    return v0
.end method
