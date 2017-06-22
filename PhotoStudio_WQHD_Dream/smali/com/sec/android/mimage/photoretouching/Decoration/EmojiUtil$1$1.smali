.class Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;
.super Ljava/lang/Object;
.source "EmojiUtil.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/regex/MatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final matcher:Ljava/util/regex/Matcher;

.field pending:Ljava/util/regex/MatchResult;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;->val$p:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1;->val$input:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->matcher:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->pending:Ljava/util/regex/MatchResult;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->pending:Ljava/util/regex/MatchResult;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->pending:Ljava/util/regex/MatchResult;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->next()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/regex/MatchResult;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->pending:Ljava/util/regex/MatchResult;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil$1$1;->pending:Ljava/util/regex/MatchResult;

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
