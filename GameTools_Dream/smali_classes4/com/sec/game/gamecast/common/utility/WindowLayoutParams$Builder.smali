.class public Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;
.super Ljava/lang/Object;
.source "WindowLayoutParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private default_flag:I

.field private flag:I

.field private gravity:I

.field private height:I

.field private pixelFormat:I

.field private samsung_flag:I

.field private title:Ljava/lang/CharSequence;

.field private type:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->width:I

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->height:I

    const/16 v0, 0x7d2

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->type:I

    iput v1, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->flag:I

    const v0, 0x1000628

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->default_flag:I

    iput v1, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->samsung_flag:I

    iput v1, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->gravity:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->title:Ljava/lang/CharSequence;

    const/4 v0, -0x3

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->pixelFormat:I

    return-void
.end method

.method static synthetic access$100(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->width:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->height:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->type:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->flag:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->pixelFormat:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->samsung_flag:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->gravity:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->title:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public addFlag(I)Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->flag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->flag:I

    return-object p0
.end method

.method public addSamsungFlag(I)Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;
    .locals 1

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->samsung_flag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->samsung_flag:I

    return-object p0
.end method

.method public build()Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;
    .locals 2

    new-instance v0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;-><init>(Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$1;)V

    return-object v0
.end method

.method public defaultFlag()Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;
    .locals 2

    iget v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->flag:I

    iget v1, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->default_flag:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->flag:I

    return-object p0
.end method

.method public gravity(I)Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->gravity:I

    return-object p0
.end method

.method public height(I)Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->height:I

    return-object p0
.end method

.method public pixelFormat(I)Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->pixelFormat:I

    return-object p0
.end method

.method public title(Ljava/lang/CharSequence;)Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public type(I)Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->type:I

    return-object p0
.end method

.method public width(I)Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->width:I

    return-object p0
.end method
