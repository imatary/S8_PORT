.class Lorg/apache/commons/imaging/palette/ColorGroupCut;
.super Ljava/lang/Object;
.source "ColorGroupCut.java"


# instance fields
.field public final less:Lorg/apache/commons/imaging/palette/ColorGroup;

.field public final limit:I

.field public final mode:Lorg/apache/commons/imaging/palette/ColorComponent;

.field public final more:Lorg/apache/commons/imaging/palette/ColorGroup;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->less:Lorg/apache/commons/imaging/palette/ColorGroup;

    iput-object p2, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->more:Lorg/apache/commons/imaging/palette/ColorGroup;

    iput-object p3, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->mode:Lorg/apache/commons/imaging/palette/ColorComponent;

    iput p4, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->limit:I

    return-void
.end method


# virtual methods
.method public getColorGroup(I)Lorg/apache/commons/imaging/palette/ColorGroup;
    .locals 2

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->mode:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/palette/ColorComponent;->argbComponent(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->limit:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->less:Lorg/apache/commons/imaging/palette/ColorGroup;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->more:Lorg/apache/commons/imaging/palette/ColorGroup;

    goto :goto_0
.end method
