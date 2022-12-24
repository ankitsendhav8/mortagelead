import { Router } from 'express';
import AuthController from './auth.controller';

const router = Router();

router.post('/lead-add', AuthController.leadFormAdd);

export default router;
