.class public abstract Landroid/icu/util/StringTrieBuilder;
.super Ljava/lang/Object;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/StringTrieBuilder$BranchHeadNode;,
        Landroid/icu/util/StringTrieBuilder$BranchNode;,
        Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;,
        Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;,
        Landroid/icu/util/StringTrieBuilder$LinearMatchNode;,
        Landroid/icu/util/StringTrieBuilder$ListBranchNode;,
        Landroid/icu/util/StringTrieBuilder$Node;,
        Landroid/icu/util/StringTrieBuilder$Option;,
        Landroid/icu/util/StringTrieBuilder$SplitBranchNode;,
        Landroid/icu/util/StringTrieBuilder$State;,
        Landroid/icu/util/StringTrieBuilder$ValueNode;
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-util-StringTrieBuilder$StateSwitchesValues:[I

.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

.field private nodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/icu/util/StringTrieBuilder$Node;",
            "Landroid/icu/util/StringTrieBuilder$Node;",
            ">;"
        }
    .end annotation
.end field

.field private root:Landroid/icu/util/StringTrieBuilder$Node;

.field private state:Landroid/icu/util/StringTrieBuilder$State;

.field protected strings:Ljava/lang/StringBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private static synthetic -getandroid-icu-util-StringTrieBuilder$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/util/StringTrieBuilder;->-android-icu-util-StringTrieBuilder$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/util/StringTrieBuilder;->-android-icu-util-StringTrieBuilder$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/util/StringTrieBuilder$State;->values()[Landroid/icu/util/StringTrieBuilder$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILT:Landroid/icu/util/StringTrieBuilder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/icu/util/StringTrieBuilder;->-android-icu-util-StringTrieBuilder$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/util/StringTrieBuilder;->registerNode(Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/StringTrieBuilder;->createSuffixNode(Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/util/StringTrieBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/util/StringTrieBuilder;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    new-instance v0, Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-direct {v0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

    return-void
.end method

.method private createSuffixNode(Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;
    .locals 5

    invoke-direct {p0, p3}, Landroid/icu/util/StringTrieBuilder;->registerFinalValue(I)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p2, v3, :cond_0

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, p1, p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private final registerFinalValue(I)Landroid/icu/util/StringTrieBuilder$ValueNode;
    .locals 4

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder;->lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-static {v2, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->-wrap0(Landroid/icu/util/StringTrieBuilder$ValueNode;I)V

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder;->lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/StringTrieBuilder$Node;

    if-eqz v1, :cond_0

    check-cast v1, Landroid/icu/util/StringTrieBuilder$ValueNode;

    return-object v1

    :cond_0
    new-instance v0, Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-direct {v0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>(I)V

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/StringTrieBuilder$Node;

    sget-boolean v2, Landroid/icu/util/StringTrieBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final registerNode(Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 3

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    sget-object v2, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    if-ne v1, v2, :cond_0

    return-object p1

    :cond_0
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/StringTrieBuilder$Node;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/StringTrieBuilder$Node;

    sget-boolean v1, Landroid/icu/util/StringTrieBuilder;->-assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method protected addImpl(Ljava/lang/CharSequence;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add (string, value) pairs after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "The maximum string length is 0xffff."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v2, p2}, Landroid/icu/util/StringTrieBuilder;->createSuffixNode(Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p0, p1, v2, p2}, Landroid/icu/util/StringTrieBuilder$Node;->add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    goto :goto_0
.end method

.method protected final buildImpl(Landroid/icu/util/StringTrieBuilder$Option;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/icu/util/StringTrieBuilder;->-getandroid-icu-util-StringTrieBuilder$StateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p0}, Landroid/icu/util/StringTrieBuilder$Node;->register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p0}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILT:Landroid/icu/util/StringTrieBuilder$State;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "No (string, value) pairs were added."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    if-ne p1, v0, :cond_1

    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Builder failed and must be clear()ed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected clearImpl()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    return-void
.end method

.method protected abstract getMaxBranchLinearSubNodeLength()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getMaxLinearMatchLength()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getMinLinearMatch()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract matchNodesCanHaveValues()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract write(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract write(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract writeDeltaTo(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract writeValueAndFinal(IZ)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract writeValueAndType(ZII)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
