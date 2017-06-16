.class final Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;
.super Ljava/lang/Object;
.source "EmojiUtil.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->findAllMatches(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/regex/MatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$input:Ljava/lang/CharSequence;

.field final synthetic val$p:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;->val$p:Ljava/util/regex/Pattern;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;->val$input:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/regex/MatchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;)V

    return-object v0
.end method
