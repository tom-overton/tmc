#define NENT_DEPRECATED
#include "entity.h"
#include "flags.h"
#include "asm.h"
#include "sound.h"
#include "room.h"
#include "functions.h"

typedef struct {
    Entity base;
    u8 filler[0x8];
    u16 tile;
    u16 tileIndex;
    u8 unk74;
    u8 unk75;
    u8 filler2[0x10];
    u16 flags;
} BollardEntity;

void sub_0808B2AC(BollardEntity*);
void sub_0808B2CC(BollardEntity*);
void sub_0808B324(BollardEntity*);
void sub_0808B344(BollardEntity*);
void sub_0808B38C(BollardEntity*);
void sub_0808B41C(BollardEntity*);
void sub_0808B3AC(BollardEntity*);
void sub_0808B42C(BollardEntity*);

void Bollard(Entity* this) {
    static void (*const actionFuncs[])(BollardEntity*) = {
        sub_0808B2AC, sub_0808B2CC, sub_0808B324, sub_0808B344, sub_0808B38C,
    };

    actionFuncs[this->action]((BollardEntity*)this);
}

void sub_0808B2AC(BollardEntity* this) {
    if (super->type2 == 0) {
        sub_0808B41C(this);
        sub_0808B3AC(this);
    } else {
        sub_0808B42C(this);
    }
}

void sub_0808B2CC(BollardEntity* this) {
    if (super->type2 == 0) {
        if (CheckFlags(this->flags) == 0) {
            return;
        }
    } else if (CheckFlags(this->flags) != 0) {
        return;
    }
    super->action = 2;
    InitializeAnimation(super, 3);
    SetTile(this->tileIndex, this->tile, super->collisionLayer);
    EnqueueSFX(SFX_1A5);
}

void sub_0808B324(BollardEntity* this) {
    GetNextFrame(super);
    if (super->frame & 0x80) {
        sub_0808B42C(this);
    }
}

void sub_0808B344(BollardEntity* this) {
    if (super->type2 == 0) {
        if (CheckFlags(this->flags) != 0) {
            return;
        }
    } else if (CheckFlags(this->flags) == 0) {
        return;
    }
    super->action = 4;
    InitializeAnimation(super, 2);
    sub_0808B3AC(this);
    EnqueueSFX(SFX_1A5);
}

void sub_0808B38C(BollardEntity* this) {
    GetNextFrame(super);
    if (super->frame & 0x80) {
        sub_0808B41C(this);
    }
}

void sub_0808B3AC(BollardEntity* this) {
    super->spritePriority.b0 = 4;
    this->tile = COORD_TO_TILE(super);
    this->tileIndex = GetTileIndex(this->tile, super->collisionLayer);
    this->unk74 = sub_080002E0(this->tile, super->collisionLayer);
    SetTile(0x400b, this->tile, super->collisionLayer);
}

void sub_0808B41C(BollardEntity* this) {
    super->action = 1;
    InitializeAnimation(super, 0);
}

void sub_0808B42C(BollardEntity* this) {
    super->action = 3;
    super->spritePriority.b0 = 7;
    InitializeAnimation(super, 1);
}